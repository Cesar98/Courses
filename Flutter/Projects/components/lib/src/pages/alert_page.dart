import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: () => _showAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            shape: StadiumBorder(),
            shadowColor: Colors.black12,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Alert!'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInImage(
                    placeholder: AssetImage('assets/rl.gif'),
                    height: 250,
                    fit: BoxFit.scaleDown,
                    fadeOutDuration: Duration(milliseconds: 200),
                    image: NetworkImage(
                        'https://www.egames.news/__export/1613427640958/sites/debate/img/2021/02/15/df2bcf6f808ffbfa581437c231274b49_crop1613427417538.png_423682103.png')),
                Divider(
                  height: 20,
                ),
                Text('Are you main Octane?'),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _nextAlert(context, 2);
                  },
                  child: Text('Nope')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _nextAlert(context, 1);
                  },
                  child: Text('Yes')),
            ],
          );
        });
  }

  void _nextAlert(BuildContext context, int type) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text('GGs Bro!'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    image: type == 1
                        ? AssetImage('assets/rl.gif')
                        : AssetImage('assets/mad.gif'),
                  ),
                  Divider(),
                  Text(type == 1 ? "I'm proud of u son" : "Who r u?"),
                ],
              ));
        });
  }
}
