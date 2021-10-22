import 'package:http/http.dart' as http;

import 'package:yugioh_api/models/card_response.dart';

Future<CardResponse> getCards() async {
  final response = await http.get(Uri.parse('https://db.ygoprodeck.com/api/v7/randomcard.php'));

  return CardResponse.fromJson(response.body);
}