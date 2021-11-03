import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preferences/src/pages/home_page.dart';

class UserPreferences {
  static final UserPreferences _instance = new UserPreferences._();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._();

  late SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  int get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _prefs.setInt('gender', value);
  }

  String get name {
    return _prefs.getString('name') ?? 'CUAR';
  }

  set name(String value) {
    _prefs.setString('name', value);
  }

  bool get secondaryColor {
    return _prefs.getBool('secondaryColor') ?? false;
  }

  set secondaryColor(bool value) {
    _prefs.setBool('secondaryColor', value);
  }

  String get lastOpenedPage {
    return _prefs.getString('lastOpenedPage') ?? HomePage.routeName;
  }

  set lastOpenedPage (String value) {
    _prefs.setString('lastOpenedPage', value);
  }
}
