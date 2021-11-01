import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('User prefferences'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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