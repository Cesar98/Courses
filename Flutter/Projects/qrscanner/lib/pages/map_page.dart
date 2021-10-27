import 'package:flutter/material.dart';
import 'package:qrscanner/models/scan_model.dart';


class MapPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final ScanModel scan = ModalRoute.of(context)!.settings.arguments as ScanModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Center(
        child: Text(scan.value),
     ),
   );
  }
}