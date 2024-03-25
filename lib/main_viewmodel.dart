import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'base/base_viewmodel.dart';

class MainVM extends BaseViewModel {
  @override
  void onInit() {
    print('MainVM');
    requestPermissions();
  }

  Future<void> requestPermissions() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
    }

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    String? token = await FirebaseMessaging.instance.getToken();
    print("tokenqqqq ==> $token");
    prefs.deviceToken = token;
    // todo topic
    subscribeToTopic();
  }

  Future unsubscribeFromTopic() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic("topic");
  }

  Future subscribeToTopic() async {
    await FirebaseMessaging.instance.subscribeToTopic("topic");
  }

  Future<void> checkPermissions() async {
    await FirebaseMessaging.instance.getNotificationSettings();
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }
}
