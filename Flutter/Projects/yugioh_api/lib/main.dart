import 'package:flutter/material.dart';
import 'package:yugioh_api/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Yugioh API connection',
      initialRoute: 'home_screen',
      routes: {
        'home_screen' : ( _ ) =>  HomePage(),
      },
    );
  }
}