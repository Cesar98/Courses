import 'package:flutter/material.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Scan QR code',
      onPressed: () async {
        /* String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#31F9CC', 'Cancel', false, ScanMode.QR); */

        final barcodeScanRes = 'https://www.google.com';

        final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

        scanListProvider.newScan(barcodeScanRes);
        scanListProvider.newScan('geo:15.33,15.66');
        
      },
      child: Icon(Icons.camera_alt),
    );
  }
}
