import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 2.4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Taps on screen',
              style: _textStyle,
            ),
            Text(
              '$_value',
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          tooltip: 'Increment',
          onPressed: _increment,
        ),
        SizedBox(
          width: 20.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_minus_1_sharp),
          tooltip: 'Decrement',
          onPressed: _decrement,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.restart_alt),
          tooltip: 'Restart',
          onPressed: _restart,
        ),
      ],
    );
  }

  void _increment() {
    _value++;
    setState(() {});
  }

  void _decrement() {
    _value--;
    setState(() {});
  }

  void _restart() {
    _value = 0;
    setState(() {});
  }
}
