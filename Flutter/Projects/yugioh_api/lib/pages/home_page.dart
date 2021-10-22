import 'package:flutter/material.dart';
import 'package:yugioh_api/providers/cards_provider.dart';
import 'package:yugioh_api/widgets/principal_card.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: getCards(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.connectionState);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return PrincipalCard(card: snapshot.data!);
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _resquestRandom();
            },
            backgroundColor: Colors.black,
            tooltip: 'Request random',
            child: Icon(Icons.all_inclusive_outlined, color: Colors.white)),
      ),
    );
  }

  void _resquestRandom() => print('Request random card');
}