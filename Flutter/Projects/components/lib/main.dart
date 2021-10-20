import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:components/src/pages/loading_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:components/src/utils/ad_state.dart';
import 'package:provider/provider.dart';

void main() {
  // ads init
  WidgetsFlutterBinding.ensureInitialized();

  // Returns a future
  final initFuture = MobileAds.instance.initialize();

  final adState = AdState(initFuture);

  runApp(Provider.value(value: adState, builder: (context, child) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', 'MX'), // Spanish, no country code
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Route name: ${settings.name}');
        return MaterialPageRoute(builder: (context) => LoadingPage());
      },
    );
  }
}
