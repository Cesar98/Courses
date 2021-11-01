import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {

  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings page'),
      )
   );
  }
}