import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20), topRight: Radius.circular(20)));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final percentage30 = size.width * .30;
    final percentage80 = size.width * .80;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
          height: 400,
          width: double.infinity,
          decoration: _cardBorders(),
          margin: EdgeInsets.only(top: 20, bottom: 50),
          child: Stack(children: [
            _backgroundImage(),
            Positioned(
              top: 0,
              right: 0,
              child: _priceCard(percentage30),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: _descCard(percentage80),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: _availableCard(percentage30),
            )
          ])),
    );
  }

  BoxDecoration _cardBorders() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 20)]);
  }

  ClipRRect _backgroundImage() {
    var borderRadius = BorderRadius.circular(20);
    return ClipRRect(
      borderRadius: borderRadius,
      child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6'),
        fit: BoxFit.cover,
        height: 400,
        width: double.infinity,
      ),
    );
  }

  Container _priceCard(double width) {
    return Container(
      decoration: boxDecoration,
      width: width,
      height: 70,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '\$123.50',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Container _descCard(double width) {
    return Container(
      decoration: boxDecoration,
      width: width,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product description',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text('Product firebase id',
                style: TextStyle(color: Colors.white, fontSize: 15))
          ],
        ),
      ),
    );
  }

  Container _availableCard(double width) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      width: width,
      height: 70,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Not available',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
