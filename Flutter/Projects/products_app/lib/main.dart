import 'package:flutter/material.dart';

import 'package:products_app/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'home' : (BuildContext context) => HomePage(),
      },

      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white70,
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple
        )
      )
    );
  }
}