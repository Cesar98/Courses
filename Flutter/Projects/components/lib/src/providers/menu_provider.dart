import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider();

  Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
