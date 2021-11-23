import 'package:flutter/material.dart';
import 'package:mapbox_app/full_map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: FullMapPage()
    );
  }
}