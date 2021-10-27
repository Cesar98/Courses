import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/widgets/scan_list_tiles.dart';


class AdressesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScanListTiles(type: 'http',);
  }
}