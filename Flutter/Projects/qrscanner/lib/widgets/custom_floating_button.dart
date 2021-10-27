import 'package:flutter/material.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/utils/utils.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Scan QR code',
      onPressed: () async {
        /* String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#31F9CC', 'Cancel', false, ScanMode.QR); */
/* 
        final barcodeScanRes = 'geo:19.25940515808391, -99.5772869118622'; */
        final barcodeScanRes = 'http://www.google.com';
        final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);
        final scan = await scanListProvider.newScan(barcodeScanRes);

        launchURL(context, scan);
        
      },
      child: Icon(Icons.camera_alt),
    );
  }
}
