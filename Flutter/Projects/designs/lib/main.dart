import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:flutter/services.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_design' : ( _ ) => ScrollScreen(),
        'home_screen' : ( _ ) => HomeScreen(),
      },
    );
  }
}