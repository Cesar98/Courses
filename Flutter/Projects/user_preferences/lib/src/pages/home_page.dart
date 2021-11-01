import 'package:flutter/material.dart';

import 'package:user_preferences/src/widgets/custom_sidebar.dart';


class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        title: Text('User preferences'),
      ),
      drawer: CustomSidebar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          Text('Secondary color'),
          Divider(),
          Text('Gender'),
          Divider(),
          Text('Username'),
          Divider(),
        ],
     ),
   );
  }
}