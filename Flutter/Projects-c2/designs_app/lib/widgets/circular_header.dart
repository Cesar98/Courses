import 'package:flutter/material.dart';

class CircularHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .4,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius : BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
      ),
    );
  }
}