import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final args = ModalRoute.of(context)?.settings.arguments ?? 'No data';

    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Center(
        child: Text('Message page: $args'),
      ),
    );
  }
}
