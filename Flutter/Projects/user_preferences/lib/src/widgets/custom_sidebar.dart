import 'package:flutter/material.dart';

import 'package:user_preferences/src/pages/home_page.dart';
import 'package:user_preferences/src/pages/settings_page.dart';

class CustomSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/sidebar-decoration.jpg'),
                    fit: BoxFit.fill)),
          ),
          ListTile(
            leading: Icon(Icons.bed),
            title: Text('First steps'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            title: Text('Last steps'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.laptop),
            title: Text('Wanna do'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, SettingsPage.routeName),
          ),
        ],
      ),
    );
  }
}
