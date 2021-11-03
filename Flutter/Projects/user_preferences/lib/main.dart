import 'package:flutter/material.dart';

import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/settings_page.dart';
import 'package:user_preferences/src/shared_prefs/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new UserPreferences();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: prefs.secondaryColor ? ThemeData.light() : ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'User preferences',
      initialRoute: prefs.lastOpenedPage,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
