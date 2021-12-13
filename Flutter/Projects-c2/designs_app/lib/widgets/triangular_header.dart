import 'package:flutter/material.dart';

class TriangularHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _TriangularHeaderPainter(),
        ));
  }
}

class _TriangularHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); 

    paint.color = Colors.blueGrey;
    paint.style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
