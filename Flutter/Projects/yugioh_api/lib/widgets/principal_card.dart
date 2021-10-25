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
        _components(card.name, card.type!, card.cardImages, card.cardPrices),
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

  Widget _components(String cardTitle, String cardType,
      List<CardImage> cardUrls, List<CardPrice> cardPrices) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [_cardImage(cardUrls), _cardPrices(cardPrices)],
        ),
      ),
    );
  }

  Widget _cardImage(List<CardImage> images) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 400,
        width: 400,
        child: FadeInImage(
            fit: BoxFit.fill,
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(images[0].imageUrl)),
      ),
    );
  }

  Widget _cardPrices(List<CardPrice> prices) {
    var textStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Expanded(
        child: Row(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ebay',
                    style: textStyle,
                  ),
                  Text(
                    (prices[0].ebayPrice).toString(),
                    style: textStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Amazon',
                    style: textStyle,
                  ),
                  Text(
                    (prices[0].amazonPrice).toString(),
                    style: textStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
