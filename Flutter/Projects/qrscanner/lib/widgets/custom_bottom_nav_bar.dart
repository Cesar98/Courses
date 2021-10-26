import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qrscanner/providers/ui_provider.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final uIProvider = Provider.of<UIProvider>(context);

    final currentIndex = uIProvider.selectedMenuOption;

    return BottomNavigationBar(
      onTap: (int i) => uIProvider.selectedMenuOption = i,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
        BottomNavigationBarItem(
            icon: Icon(Icons.alt_route_sharp), label: 'Directions'),
      ],
    );
  }
}
