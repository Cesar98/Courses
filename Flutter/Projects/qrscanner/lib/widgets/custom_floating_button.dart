import 'package:flutter/material.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Scan QR code',
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8BEF', 'Cancel', false, ScanMode.QR);

        print(barcodeScanRes);
      },
      child: Icon(Icons.camera_alt),
    );
  }
}
