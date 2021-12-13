import 'package:designs_app/pages/headers_page.dart';
import 'package:designs_app/widgets/diagonal_header.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: DiagonalHeader()
    );
  }
}