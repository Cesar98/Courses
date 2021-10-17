import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:designs/screens/home_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_design' : ( _ ) => ScrollScreen(),
        'home_screen' : ( _ ) => HomeScreen(),
      },
    );
  }
}