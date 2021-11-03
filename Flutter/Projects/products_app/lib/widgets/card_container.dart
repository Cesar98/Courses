import 'package:flutter/material.dart';

class CardContainerWidget extends StatelessWidget {

  final Widget child;

  const CardContainerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: _cardShape(),
        child: this.child,
      ),
    );
  }

  BoxDecoration _cardShape() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]);
  }
}
