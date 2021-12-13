import 'package:flutter/material.dart';

class DiagonalHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _DiagonalHeaderPainter(),
      )
    );
  }
}

class _DiagonalHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.red;

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}