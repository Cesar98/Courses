import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background()
        ],
      ),
    );
  }
}