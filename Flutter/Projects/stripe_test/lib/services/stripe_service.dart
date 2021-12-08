import 'dart:convert';

import 'package:http/http.dart' as http;

class StripeService {

  Future<String> getClientSecretId() async {
    final response = await http.get(
      Uri.parse(
          'http://192.168.100.183/BLMovil/BLMResidencial-master/public/api/general/getPaymentClientId'),
      headers: {'Accept': 'application/json'},
    );

    final Map<String, dynamic> decodedData = json.decode(response.body);

    return decodedData['client_secret'];
  }
}
