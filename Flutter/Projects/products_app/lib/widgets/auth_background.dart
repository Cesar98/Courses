import 'package:flutter/material.dart';

class AuthBackgroundWidget extends StatelessWidget {
  final Widget child;

  const AuthBackgroundWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              child: Icon(Icons.person_pin, size: size.width * .30),
            ),
          ), 
          this.child
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBoxBackground(),
      child: Stack(
        children: [
          Positioned(
            child: _Bubble(),
            top: -30,
            left: 30,
          ),
          Positioned(
            child: _Bubble(),
            top: 180,
            left: -40,
          ),
          Positioned(
            child: _Bubble(),
            top: 90,
            left: -10,
          ),
          Positioned(
            child: _Bubble(),
            top: 110,
            left: 100,
          ),
          Positioned(
            child: _Bubble(),
            bottom: 100,
            right: 100,
          ),
          Positioned(
            child: _Bubble(),
            bottom: 180,
            right: -10,
          ),
          Positioned(
            child: _Bubble(),
            bottom: 90,
            right: -50,
          ),
          Positioned(
            child: _Bubble(),
            bottom: -50,
            right: 50,
          ),
        ],
      ),
    );
  }

  BoxDecoration _purpleBoxBackground() {
    return BoxDecoration(
        gradient: LinearGradient(colors: [
      Color.fromRGBO(63, 63, 156, 1),
      Color.fromRGBO(90, 70, 178, 1),
    ]));
  }
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .20,
      height: size.width * .20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
