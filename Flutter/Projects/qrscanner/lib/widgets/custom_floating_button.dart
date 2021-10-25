import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Scan QR code',
      onPressed: () {},
      child: Icon(Icons.camera_alt),
    );
  }
}
