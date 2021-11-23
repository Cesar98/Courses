import 'package:flutter/material.dart';
import 'package:push_notifications/pages/home_page.dart';
import 'package:push_notifications/pages/message_page.dart';
import 'package:push_notifications/services/push_notifications_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationsService.initApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    PushNotificationsService.messageStream.listen((event) {
      print('Myapp: $event');

      final snackBar = SnackBar(content: Text('$event'));
      messengerKey.currentState?.showSnackBar(snackBar);
      navigatorKey.currentState?.pushNamed('message', arguments: event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: messengerKey,
        theme: ThemeData.dark(),
        routes: {
          'home': (_) => HomePage(),
          'message': (_) => MessagePage(),
        });
  }
}
