import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200;
  bool _blockSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            _createSlider(),
            Divider(),
            _createCheckBox(),
            Divider(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.purple,
        thumbColor: Colors.black,
        inactiveColor: Colors.deepPurple,
        label: 'Image size',
        value: _sliderValue,
        min: 10,
        max: 400,
        onChanged: (_blockSlider == true)
            ? null
            : (value) {
                _sliderValue = value;
                setState(() {});
              });
  }

  Widget _createImage() {
    return FadeInImage(
      placeholder: AssetImage('assets/rl.gif'),
      image: NetworkImage(
          'https://media.fortniteapi.io/images/fd083d5274553f3e5c715850f5477dd9/transparent.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    /* return Checkbox(
        activeColor: Colors.purple,
        value: _blockSlider,
        onChanged: (value) {
          _blockSlider = value!;
          setState(() {});
        }); */
    return CheckboxListTile(
        activeColor: Colors.purple,
        secondary: Icon(
          Icons.stop_circle_outlined,
          color: Colors.purple,
        ),
        title: Text('Block slider'),
        value: _blockSlider,
        onChanged: (value) {
          _blockSlider = value!;
          setState(() {});
        });
  }

  Widget _createSwitch() {
    return SwitchListTile(
        activeColor: Colors.purple,
        secondary: Icon(
          Icons.stop_circle_outlined,
          color: Colors.purple,
        ),
        title: Text('Block slider'),
        value: _blockSlider,
        onChanged: (value) {
          _blockSlider = value;
          setState(() {});
        });
  }
}
