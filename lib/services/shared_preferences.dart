import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<bool?> getBool(String key) async {
    final prefs = await _instance;
    return prefs.getBool(key);
  }

  Future<void> setBool(String key, bool value) async {
    final prefs = await _instance;
    prefs.setBool(key, value);
  }

  Future<SharedPreferences> get _instance async {
    return await SharedPreferences.getInstance();
  }
}
