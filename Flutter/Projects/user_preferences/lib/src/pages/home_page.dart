import 'package:flutter/material.dart';

import 'package:user_preferences/src/shared_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/custom_sidebar.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {

    prefs.lastOpenedPage = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            prefs.secondaryColor ? Colors.deepPurpleAccent : Colors.black87,
        centerTitle: true,
        title: Text('User preferences'),
      ),
      drawer: CustomSidebar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          Text(
              "Secondary color ${prefs.secondaryColor ? 'Activated' : 'Deactivated'}"),
          Divider(),
          Text("Gender ${prefs.gender == 1 ? 'Male' : 'Female'}"),
          Divider(),
          Text('Username ${prefs.name}'),
          Divider(),
        ],
      ),
    );
  }
}
