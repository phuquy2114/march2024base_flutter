import 'dart:developer';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../base/di/locator.dart';
import '../../constants/constants.dart';
import '../local/shared_prefs.dart';
import 'auth_services.dart';

// trong authen dung BearerToken,
const authenticatorBearer = 'Bearer';

class ApiClient {
  final dio = Dio();
  final sharePrefs = locator.get<SharedPrefs>();

  late AuthServices authServices;

  ApiClient() {
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          // ghi log
          responseHeader: true,
          requestHeader: true,
          requestBody: true,
          request: true,
        ),
      );
    }

    try {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return null;
      };
    } catch (_) {}

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final prefs = locator<SharedPrefs>();
          if (kDebugMode) {
            log('Authorization ${prefs.accessToken}');
          }

          // BearerToken duoc luu o prefs va duoc goi sau moi lan request
          // Bat ke api nao thi deu goi cai nay
          if (prefs.accessToken != null) {
            options.headers['Authorization'] =
                '$authenticatorBearer ${prefs.accessToken}';
          }

          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == HttpStatus.unauthorized) {
            goToLogin();
            return;
          }

          final result = await (Connectivity().checkConnectivity());
          if (result == ConnectivityResult.none) {
            final error =
                "No internet connection. Please check the connection again.";
            print(error);
            return;
          }

          try {
            // final message = error.response?.data['message']?.toString();
            //final error = message ?? "Processing failed. please try again.";
            handler.reject(error);
          } catch (_) {
            final msg = error.response?.data['errCd']?.toString();
            // error.error = msg ?? "Processing failed. please try again.";
            handler.reject(error);
          }
        },
      ),
    );

    authServices = AuthServices(dio, baseUrl: Constants.baseURL);
  }

  Future<void> goToLogin() async {
    sharePrefs.clearAuth();
    final fln = FlutterLocalNotificationsPlugin();
    await fln.cancelAll();
    return;
  }
}
