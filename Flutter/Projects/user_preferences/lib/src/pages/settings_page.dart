import 'package:flutter/material.dart';

import 'package:user_preferences/src/shared_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/custom_sidebar.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool? _switchColor;
  int? _gender;
  String? _name;

  TextEditingController? _textController;

  final prefs = new UserPreferences();

  @override
  void initState() {
    super.initState();

    _switchColor = prefs.secondaryColor;
    _gender = prefs.gender;
    _name = prefs.name;

    prefs.lastOpenedPage = SettingsPage.routeName;

    _textController = new TextEditingController(text: _name);
  }

  _setSelectedRadio(int? value) {
    prefs.gender = value!;
    _gender = value;
    setState(() {});
  }

  _setSelectedColors(bool? value) {
    prefs.secondaryColor = value!;
    _switchColor = value;
    setState(() {});
  }

  _setNewUsername(String? value) {
    prefs.name = value!;
    _name = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomSidebar(),
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor:
              prefs.secondaryColor ? Colors.deepPurpleAccent : Colors.black87,
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
            value: _switchColor!,
            onChanged: _setSelectedColors,
            title: Text('Use secondary color'),
          ),
          Divider(),
          RadioListTile(
              value: 1,
              groupValue: _gender,
              onChanged: _setSelectedRadio,
              title: Text('Male')),
          RadioListTile(
              value: 2,
              groupValue: _gender,
              onChanged: _setSelectedRadio,
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
              onChanged: _setNewUsername,
            ),
          ),
        ]));
  }
}
