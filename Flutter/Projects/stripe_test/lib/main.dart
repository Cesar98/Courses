import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_test/pages/dashboard_page.dart';

void main() {
  Stripe.publishableKey = 'pk_test_51I3nDXHB0KUwJDZpEq7lCicVBRbd49OTXBNMwAkooPNityCQwdcitldyQlEH2JfyIgZZWQg6o4jKNPAFwyqqQIBN00RUBL5Zn1';
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: DashboardPage()
    );
  }
}