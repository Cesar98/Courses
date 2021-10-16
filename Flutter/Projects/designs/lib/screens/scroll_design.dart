import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffe0d3a),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), Content()],
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-2.png'),
          width: double.infinity,
          fit: BoxFit.fill,
        ));
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 150, top: 40),
              child: Column(
                children: [
                  Text('11°', style: textStyle),
                  Text('Monday',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
              size: 150,
            )
          ],
        ));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0xff010003), Color(0xff130042), Color(0xfffe0d3a)]),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            child: Text('Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.black, shape: StadiumBorder()),
        ),
      ),
    );
  }
}
