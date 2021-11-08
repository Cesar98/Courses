import 'package:flutter/material.dart';

import 'package:products_app/pages/pages.dart';
import 'package:products_app/services/services.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AuthService()),
      ChangeNotifierProvider(create: (_) => ProductsService()),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Products App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'checking',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
          'product': (BuildContext context) => ProductPage(),
          'register': (BuildContext context) => RegisterPage(),
          'checking': (BuildContext context) => CheckAuthPage(),
        },
        scaffoldMessengerKey : NotificationsService.messengerKey,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white70,
          appBarTheme: AppBarTheme(color: Colors.deepPurple),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
        ));
  }
}
