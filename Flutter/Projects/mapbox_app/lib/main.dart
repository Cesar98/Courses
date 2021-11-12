import 'package:flutter/material.dart';
import 'package:mapbox_app/src/pages/full_map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(body: FullMapPage()),
    );
  }
}
