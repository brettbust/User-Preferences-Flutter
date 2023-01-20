import 'package:shared_preferences/shared_preferences.dart';

//el shared preferences no es un gestor de estado, es un gestor de datos.

class Preferences {
  static late SharedPreferences _pref;

  static String _name = '';

  static bool _isDarkMode = false;

  static int _gender = 1;

  static Future init() async => _pref = await SharedPreferences.getInstance();

  // getter del name
  static String get name => _pref.getString('name') ?? _name;

//setter del name

  static set name(String value) {
    _name = value;
    _pref.setString('name', value);
  }

  // getter del isDarkMode

  static bool get isDarkMode => _pref.getBool('isDarkMode') ?? _isDarkMode;

  //setter del isDarkMode

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _pref.setBool('isDarkMode', value);
  }

  // getter del gender

  static int get gender => _pref.getInt('gender') ?? _gender;

  //setter del isDarkMode

  static set gender(int value) {
    _gender = value;
    _pref.setInt('gender', value);
  }
}
