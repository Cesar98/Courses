import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:components/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Principal'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> elements, BuildContext context) {
    final List<Widget> listed = [];

    elements.forEach((element) {
      final widgetElement = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing:
            Icon(Icons.keyboard_arrow_right_outlined, color: Colors.black),
        onTap: () {
          /* final route = MaterialPageRoute(
            builder: (context) => AlertPage(),
          );
          Navigator.push(context, route); */
          Navigator.pushNamed(context, element['ruta']);
        },
      );

      listed
        ..add(widgetElement)
        ..add(Divider());
    });

    return listed;
  }
}
