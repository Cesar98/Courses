import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Route name: ${settings.name}');
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
