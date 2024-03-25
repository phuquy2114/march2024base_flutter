import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

extension HandleMessage on FirebaseMessaging {

  static StreamSubscription? _onMessage;

  static void handleMessage(Function(RemoteMessage) fn) {
    _onMessage?.cancel();
    _onMessage = FirebaseMessaging.onMessage.listen(fn);
  }

  static StreamSubscription? _onMessageOpenedApp;

  static void handleMessageOpenedApp(Function(RemoteMessage) fn) {
    _onMessageOpenedApp?.cancel();
    _onMessageOpenedApp = FirebaseMessaging.onMessageOpenedApp.listen(fn);
  }
}
