import 'package:flutter/material.dart';

import 'package:products_app/widgets/widgets.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgroundWidget(
        child: Container(width: double.infinity, height: 100, color: Colors.red,),
      )
   );
  }
}