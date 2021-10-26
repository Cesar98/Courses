import 'package:flutter/material.dart';


class MapsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ( _ , int index) {
        return ListTile(
          leading: Icon(Icons.map, color: Theme.of(context).primaryColor),
          title: Text('Title'),
          subtitle : Text('Subtitle'),
          trailing: Icon(Icons.arrow_forward, color: Colors.black87),
          onTap: () {
            print('Opening');
          },
        );
      },
    );
  }
}