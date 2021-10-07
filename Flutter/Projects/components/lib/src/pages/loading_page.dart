import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This page still in process'),
      ),
      body: Center(
        child: Icon(Icons.laptop_windows_sharp),
      ),
    );
  }
}
