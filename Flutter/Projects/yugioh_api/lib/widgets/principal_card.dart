import 'package:flutter/material.dart';
import 'package:yugioh_api/models/card_response.dart';


class PrincipalCard extends StatelessWidget {
  final CardResponse card;

  const PrincipalCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _background(),
        _components(),
      ],
    );
  }

  Widget _background() {
    return Image(
      image: AssetImage('assets/background.jpg'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }

  Widget _components() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _cardTitle(),
            _cardStars(),
            _cardImage(),
            _cardDescription()
          ],
        ),
      ),
    );
  }

  Widget _cardTitle() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white70),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
          child: Text(
            'Card title'.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }

  Widget _cardStars() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Container()),
          Icon(Icons.stars, color: Colors.red),
        ],
      ),
    );
  }

  Widget _cardImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 300,
        width: 400,
        child: FadeInImage(
            fit: BoxFit.fill,
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://static.wikia.nocookie.net/yugiohenespanol/images/5/58/Foto_mago_oscuro.jpg/revision/latest?cb=20120121043211&path-prefix=es')),
      ),
    );
  }

  Widget _cardDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 130, height: 20, color: Colors.red),
            Container(width: 130, height: 20, color: Colors.blue),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
