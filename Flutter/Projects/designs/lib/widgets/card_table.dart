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
              cardColor: 0xff81F7F8,
              cardTitle: 'General',
              cardIcon: Icon(
                Icons.auto_awesome_mosaic_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            _UniqueCard(
              cardColor: 0xffC16DFB,
              cardTitle: 'Transport',
              cardIcon: Icon(
                Icons.bus_alert,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
          TableRow(children: [
            _UniqueCard(
              cardColor: 0xffE2A3F0,
              cardTitle: 'Shopping',
              cardIcon: Icon(
                Icons.shop_2,
                size: 30,
                color: Colors.white,
              ),
            ),
            _UniqueCard(
              cardColor: 0xffE7D364,
              cardTitle: 'Bills',
              cardIcon: Icon(
                Icons.airplane_ticket,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
          TableRow(children: [
            _UniqueCard(
              cardColor: 0xff3F73CC,
              cardTitle: 'Entertainment',
              cardIcon: Icon(
                Icons.fire_extinguisher_sharp,
                size: 30,
                color: Colors.white,
              ),
            ),
            _UniqueCard(
              cardColor: 0xff55CC3F,
              cardTitle: 'Grocery',
              cardIcon: Icon(
                Icons.food_bank,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
          TableRow(children: [
            _UniqueCard(
              cardColor: 0xff4A236A,
              cardTitle: 'Games',
              cardIcon: Icon(
                Icons.gamepad_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            _UniqueCard(
              cardColor: 0xff000000,
              cardTitle: 'Laptops',
              cardIcon: Icon(
                Icons.computer,
                size: 30,
                color: Colors.white,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

class _UniqueCard extends StatelessWidget {
  final int cardColor;
  final String cardTitle;
  final Icon cardIcon;

  const _UniqueCard(
      {Key? key,
      required this.cardColor,
      required this.cardTitle,
      required this.cardIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Color(0xFF0E3311).withOpacity(0.3),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Color(cardColor)],
                              begin: Alignment.topLeft,
                              stops: [0.01, 0.5])),
                    ),
                  ),
                  cardIcon
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(cardTitle,
                  style: TextStyle(
                      color: Color(cardColor),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
