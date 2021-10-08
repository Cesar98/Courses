import 'package:flutter/material.dart';

import 'dart:math';

class AnimateContainerPage extends StatefulWidget {
  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.deepOrange;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
        ),
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOutCirc,
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 30.0,
          ),
          FloatingActionButton(
            child: Icon(Icons.all_inclusive_sharp),
            tooltip: 'Change container',
            onPressed: _changePropertries,
            backgroundColor: Colors.purple,
            heroTag: 1,
          ),
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            child: Icon(Icons.restart_alt),
            tooltip: 'Restart',
            onPressed: () {
              Navigator.pop(context);
            },
            heroTag: 2,
          ),
        ],
      ),
    );
  }

  void _changePropertries() {
    final random = Random();

    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(500).toDouble();
    _color = Color.fromRGBO(
        random.nextInt(500), random.nextInt(500), random.nextInt(500), 1.0);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    setState(() {});
  }
}
