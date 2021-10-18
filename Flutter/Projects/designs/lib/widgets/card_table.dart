import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Table(
        children: [
          TableRow(children: [
            _UniqueCard(
                cardColor: Color(0xff81F7F8),
                cardTitle: 'General',
                cardIcon: Icons.auto_awesome_mosaic_rounded),
            _UniqueCard(
                cardColor: Color(0xffC16DFB),
                cardTitle: 'Transport',
                cardIcon: Icons.bus_alert),
          ]),
          TableRow(children: [
            _UniqueCard(
                cardColor: Color(0xffE2A3F0),
                cardTitle: 'Shopping',
                cardIcon: Icons.shop_2),
            _UniqueCard(
                cardColor: Color(0xffE7D364),
                cardTitle: 'Bills',
                cardIcon: Icons.airplane_ticket),
          ]),
          TableRow(children: [
            _UniqueCard(
                cardColor: Color(0xff3F73CC),
                cardTitle: 'Entertainment',
                cardIcon: Icons.fire_extinguisher_sharp),
            _UniqueCard(
                cardColor: Color(0xff55CC3F),
                cardTitle: 'Grocery',
                cardIcon: Icons.food_bank),
          ]),
          TableRow(children: [
            _UniqueCard(
                cardColor: Color(0xff4A236A),
                cardTitle: 'Games',
                cardIcon: Icons.gamepad_outlined),
            _UniqueCard(
                cardColor: Color(0xff000000),
                cardTitle: 'Laptops',
                cardIcon: Icons.computer),
          ]),
        ],
      ),
    );
  }
}

class _UniqueCard extends StatelessWidget {
  final Color cardColor;
  final IconData cardIcon;
  final String cardTitle;

  const _UniqueCard(
      {Key? key,
      required this.cardColor,
      required this.cardTitle,
      required this.cardIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: cardColor,
          child: Icon(
            cardIcon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(cardTitle,
            style: TextStyle(
                color: cardColor, fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15,
        ),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
