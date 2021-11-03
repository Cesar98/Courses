import 'package:flutter/material.dart';
import 'package:products_app/ui/input_decorations.dart';

import 'package:products_app/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var textStyle = TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
        fontSize: 40);

    return Scaffold(
        body: AuthBackgroundWidget(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.width * .50),
          CardContainerWidget(
            child: Center(
                child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Login', style: textStyle),
                SizedBox(
                  height: 10,
                ),
                _LoginForm(),
              ],
            )),
          ),
          SizedBox(height: size.width * .10),
          Text('Register')
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                'example@gmail.com', 'Email', Icons.alternate_email_rounded),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            decoration: InputDecorations.authInputDecoration(
                'Password', 'Password', Icons.lock_outline_rounded),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            color: Colors.purple,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}
