import 'package:flutter/material.dart';

class UIProvider extends ChangeNotifier{
  int _selectedMenuOption = 0;

  int get selectedMenuOption => this._selectedMenuOption;

  set selectedMenuOption(int i) {
    this._selectedMenuOption = i;
    notifyListeners();
  } 
}
