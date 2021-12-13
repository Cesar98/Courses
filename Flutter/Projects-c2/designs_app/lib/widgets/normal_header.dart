import 'package:flutter/material.dart';

class NormalHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .4,
      width: double.infinity,
      color: Colors.lightGreen,
    );
  }
}