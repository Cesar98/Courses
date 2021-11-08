import 'package:flutter/material.dart';
import 'package:products_app/pages/home_page.dart';
import 'package:products_app/pages/login_page.dart';
import 'package:products_app/services/services.dart';
import 'package:provider/provider.dart';

class CheckAuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.readToken(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return Text('Please Wait');
            if (snapshot.data == 'null') {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => LoginPage(),
                        transitionDuration: Duration(seconds: 0)));
              });
            } else {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => HomePage(),
                        transitionDuration: Duration(seconds: 0)));
              });
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
