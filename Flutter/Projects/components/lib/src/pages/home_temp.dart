import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final _options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _createItemsLess(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> listed = [];

    for (String option in _options) {
      final tempWidget = ListTile(
        title: Text(option),
      );
      listed..add(tempWidget)..add(Divider());
    }

    return listed;
  }

  List<Widget> _createItemsLess() {
    return _options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('!$item!'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.accessibility_new_sharp),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
