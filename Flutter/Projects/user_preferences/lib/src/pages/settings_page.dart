import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/custom_sidebar.dart';


class SettingsPage extends StatelessWidget {

  static final String routeName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomSidebar(),
      appBar : AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings page'),
      )
   );
  }
}