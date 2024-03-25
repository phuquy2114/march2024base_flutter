
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  late SharedPreferences _prefs;

  Future initialise() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // device_token
  String? get deviceToken {
    return _prefs.getString("deviceToken");
  }

  String? get email {
    if (!_prefs.containsKey('email')) return null;
    return _prefs.getString("email");
  }

  String? get password {
    if (!_prefs.containsKey('password')) return null;
    return _prefs.getString("password");
  }

  set deviceToken(String? token) {
    _prefs.setString("deviceToken", token ?? "");
  }

  set password(String? password) {
    _prefs.setString("password", password ?? "");
  }

  set email(String? email) {
    _prefs.setString("email", email ?? "");
  }

  int? get userTypeId {
    if (!_prefs.containsKey('user_type_id')) return null;
    return _prefs.getInt("user_type_id");
  }

  set userTypeId(int? usertype) {
    _prefs.setInt("user_type_id", usertype ?? 0);
  }

  int? get distanceKM {
    if (!_prefs.containsKey('distance_km_map')) return null;
    return _prefs.getInt("distance_km_map");
  }

  set distanceKM(int? distanceKM) {
    _prefs.setInt("distance_km_map", distanceKM ?? 0);
  }

  String? get languageCode {
    if (!_prefs.containsKey('languageCode')) return 'en';
    return _prefs.getString("languageCode");
  }

  set languageCode(String? languageCode) {
    _prefs.setString("languageCode", languageCode ?? "");
  }

  String? get prefixUrl {
    if (!_prefs.containsKey('prefix_url')) return null;
    return _prefs.getString('prefix_url');
  }

  String? get accessToken {
    if (!_prefs.containsKey('access_token')) return null;

    return _prefs.getString('access_token');
  }

  set accessToken(String? token) {
    _prefs.setString("access_token", token ?? "");
  }

  bool get isLogin => firstRun != null;

  bool? get firstRun {
    if (!_prefs.containsKey('first_run')) {
      return null;
    }

    return _prefs.getBool('first_run');
  }

  set firstRun(bool? value) {
    _prefs.setBool('first_run', value ?? false);
  }

  bool? get notificationOn {
    if (!_prefs.containsKey('notification_on')) {
      return true;
    }
    return _prefs.getBool('notification_on');
  }

  set notificationOn(bool? value) {
    _prefs.setBool('notification_on', value ?? false);
  }

  set favoriteNews(List<String>? value) {
    _prefs.setStringList('favorite_news', value ?? []);
  }

  List<String>? get favoriteNews {
    if (!_prefs.containsKey('favorite_news')) {
      return null;
    }

    return _prefs.getStringList('favorite_news');
  }

  Future<void> removeRemember() async {
    await _prefs.remove('password');
    await _prefs.remove('email');
  }

  Future<void> clearData() async {
    await _prefs.remove('user');
  }

  Future<void> removeSeason() async {
    await _prefs.remove('access_token');
  }

  Future<void> clearAuth() async {
    await clearData();
    await  removeSeason();
  }
}
