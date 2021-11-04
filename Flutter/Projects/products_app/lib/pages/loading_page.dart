import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.purple,
      )),
    );
  }
}
