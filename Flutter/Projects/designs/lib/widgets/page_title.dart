import 'package:flutter/material.dart';

class PageTitles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10,),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
