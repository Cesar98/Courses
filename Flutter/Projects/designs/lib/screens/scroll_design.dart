import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [Background(), Content()],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
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
      child: Container(
          child: Column(
        children: [
          SizedBox(height: 40,),
          Text('11°', style: textStyle),
          Text('Monday°',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 150,
          )
        ],
      )),
    );
  }
}
