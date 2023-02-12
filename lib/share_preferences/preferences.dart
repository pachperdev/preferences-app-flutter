import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _pref;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future<SharedPreferences> init() async {
    return _pref = await SharedPreferences.getInstance();
  }
}
