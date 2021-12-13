import 'package:flutter/material.dart';

class PinchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _PinchHeaderPainter(),
        ));
  }
}

class _PinchHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint(); 

    paint.color = Colors.blueGrey;
    paint.style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height * .40);
    path.lineTo(size.width * .50, size.height * .50);
    path.lineTo(size.width, size.height * .40);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
