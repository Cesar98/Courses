import 'package:flutter/material.dart';
import 'package:yugioh_api/providers/cards_provider.dart';
import 'package:yugioh_api/widgets/principal_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _resquestRandom(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _resquestRandom();
            },
            backgroundColor: Colors.black,
            tooltip: 'Request random',
            child:
                const Icon(Icons.all_inclusive_outlined, color: Colors.white)),
      ),
    );
  }

  Widget _resquestRandom() {
    final future = FutureBuilder(
      future: getCards(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.data == null) {
            _resquestRandom();
          }
          return PrincipalCard(card: snapshot.data!);
        }
      },
    );

    setState(() {});

    return future;
  }
}
