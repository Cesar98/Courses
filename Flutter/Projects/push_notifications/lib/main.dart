import 'package:flutter/material.dart';
import 'package:push_notifications/pages/home_page.dart';
import 'package:push_notifications/pages/message_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        'home' : ( _ ) => HomePage(),
        'message' : ( _ ) => MessagePage(),
      }

    );
  }
}