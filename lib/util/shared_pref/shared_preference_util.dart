import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtil {
  static SharedPreferences? prefs;

  static initLocalStorage() async {
    prefs = await SharedPreferences.getInstance();
  }

  static setLocalString({required String key, required String value}) async {
    var prefs = await SharedPreferences.getInstance();
     await prefs?.setString(key, value);
  }

  //ge. comment
  static Future<String?> getLocalString({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    var value = prefs?.getString(key);
    return value;
  }

  static clearLocalStorage() async {
    var prefs = await SharedPreferences.getInstance();
      prefs.clear();
  }
}
