import 'package:flutter/material.dart';

import 'package:products_app/pages/pages.dart';
import 'package:products_app/services/services.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ProductsService())],
        child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Products App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
          'product': (BuildContext context) => ProductPage(),
        },
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white70,
          appBarTheme: AppBarTheme(color: Colors.deepPurple),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
        ));
  }
}
