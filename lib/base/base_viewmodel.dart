import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../remote/local/shared_prefs.dart';
import '../remote/service/api_client.dart';
import 'di/locator.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final api = locator<ApiClient>();
  final prefs = locator<SharedPrefs>();
  bool _isFirst = true;
  bool _showLoading = false;
  VoidCallback? onShowLoading, onHideLoading;
  void Function(String)? onShowError;
  void Function(String)? onShowSuccess;

  BaseViewModel() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInit();
    });
  }

  @protected
  void onInit();

  void showSuccess(String message) {
    hideLoading();
    onShowSuccess?.call(message);
  }

  void showLoading() {
    if (!_showLoading) {
      _showLoading = true;
      onShowLoading?.call();
    }
  }

  void hideLoading() {
    if (_showLoading) {
      _showLoading = false;
      onHideLoading?.call();
    }
  }

  void showError(String message) {
    hideLoading();
    onShowError?.call(message);
  }

  void showNonPopError(String message) {
    onShowError?.call(message);
  }

  void showErrorConnection() {
    hideLoading();

    (Connectivity().checkConnectivity()).then((value) {
      if (value == ConnectivityResult.none) {
        showError("Not connect Internet ");
        return;
      }

    });
  }

  void appear() {
    if (_isFirst) {
      _isFirst = false;
      return;
    }

    try {
      onAppear.call();
    } catch (_) {}
  }

  external void onAppear();

  void disAppear() {
    if (_isFirst) return;

    try {
      onDisAppear();
    } catch (_) {}
  }

  external void onDisAppear();
}
