import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qrscanner/pages/home_page.dart';
import 'package:qrscanner/pages/maps_page.dart';

import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UIProvider()),
        ChangeNotifierProvider(create: (_) => ScanListProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            tooltipTheme: TooltipThemeData(
                decoration: BoxDecoration(color: Colors.purple.shade100))),
        title: 'Qr Scanner',
        initialRoute: 'home',
        routes: {'home': (_) => HomePage(), 'maps': (_) => MapsPage()},
      ),
    );
  }
}
