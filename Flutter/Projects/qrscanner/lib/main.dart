import 'package:flutter/material.dart';
import 'package:qrscanner/pages/home_page.dart';
import 'package:qrscanner/pages/maps_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Qr Scanner',
      initialRoute: 'home',
      routes: {
        'home' : ( _ ) => HomePage(),
        'maps' : ( _ ) => MapsPage()
      },
    );
  }
}