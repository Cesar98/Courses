import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Colors.white60,
      showSelectedLabels: true,
      currentIndex: 2,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          tooltip: 'Basic',
          label: 'Basic',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility_new),
          tooltip: 'Scroll',
          label: 'Scroll',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_tree), 
          tooltip: 'Final', 
          label: 'Final'
        ),
      ]
    );
  }
}
