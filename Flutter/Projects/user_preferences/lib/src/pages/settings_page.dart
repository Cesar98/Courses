import 'package:flutter/material.dart';

import 'package:user_preferences/src/widgets/custom_sidebar.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _switchColor = false;
  int _gender = 1;
  String _name = 'CUAR';

  TextEditingController? _textController;

  @override
  void initState() {
    super.initState();
    
    _textController = new TextEditingController(text: _name);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomSidebar(),
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.center,
            child: Text(
              'Current settings',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _switchColor,
            onChanged: (value) => setState(() => _switchColor = value),
            title: Text('Use secondary color'),
          ),
          Divider(),
          RadioListTile(
              value: 1,
              groupValue: _gender,
              onChanged: (value) => setState(() => _gender = value as int),
              title: Text('Male')),
          RadioListTile(
              value: 2,
              groupValue: _gender,
              onChanged: (value) => setState(() => _gender = value as int),
              title: Text('Female')),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                  labelText: 'Username',
                  helperText: "Who's using the phone?",
                  icon: Icon(Icons.supervised_user_circle_rounded)),
              onChanged: (value) {},
            ),
          ),
        ]));
  }
}
