import 'package:flutter/material.dart';
import 'package:products_app/providers/login_form_provider.dart';
import 'package:products_app/ui/input_decorations.dart';

import 'package:products_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
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
                Text('Create account', style: textStyle),
                SizedBox(
                  height: 10,
                ),
                ChangeNotifierProvider(
                    create: (_) => LoginFormProvider(), child: _LoginForm())
              ],
            )),
          ),
          SizedBox(height: size.width * .10),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple.shade300),
              overlayColor: MaterialStateProperty.all(Colors.white30)

            ),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, 'login'),
            child: Text('Login', style: TextStyle(color: Colors.black87),),
          ),
          SizedBox(height: size.width * .25),
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginFrom = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
          key: loginFrom.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                      'example@gmail.com',
                      'Email',
                      Icons.alternate_email_rounded),
                  onChanged: (value) => loginFrom.email = value,
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = new RegExp(pattern);

                    if (value == '') return 'Fill the email field';

                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'Email field does not match';
                  }),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecorations.authInputDecoration(
                      'Password', 'Password', Icons.lock_outline_rounded),
                  onChanged: (value) => loginFrom.password = value,
                  validator: (value) {
                    if (value == '') return 'Fill the password field';

                    return value!.length >= 6
                        ? null
                        : 'Password field does have to be more than 6 chars';
                  }),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: loginFrom.isLoading
                    ? null
                    : () {
                        FocusScope.of(context).unfocus();

                        if (!loginFrom.isValidForm()) return null;

                        Navigator.pushReplacementNamed(context, 'home');
                        loginFrom.isLoading = true;
                      },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                color: Colors.purple,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: loginFrom.isLoading
                      ? Text('Please wait', style: TextStyle(color: Colors.white))
                      : Text('Login', style: TextStyle(color: Colors.white)),
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
