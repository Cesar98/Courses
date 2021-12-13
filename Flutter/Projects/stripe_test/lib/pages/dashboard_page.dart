import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_test/services/stripe_service.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String clientSecret = '';

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.payment_rounded),
        onPressed: () async {
          Stripe.publishableKey =
              'pk_test_51I3nDXHB0KUwJDZpEq7lCicVBRbd49OTXBNMwAkooPNityCQwdcitldyQlEH2JfyIgZZWQg6o4jKNPAFwyqqQIBN00RUBL5Zn1';
          clientSecret = await StripeService().getClientSecretId();

          await Stripe.instance.initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
            applePay: false,
            googlePay: true,
            testEnv: true,
            style: ThemeMode.dark,
            paymentIntentClientSecret: clientSecret,
            merchantCountryCode: myLocale.countryCode,
            merchantDisplayName: 'Pago de recibos',
            primaryButtonColor: Colors.black,
            billingDetails: BillingDetails(email: 'cesar_zuco@hotmail.com'),
          ));
          setState(() {});

          displayPaymentSheet();
        },
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      setState(() {
        clientSecret = '';
      });
    } catch (e) {
      print(e);
    }
  }
}
