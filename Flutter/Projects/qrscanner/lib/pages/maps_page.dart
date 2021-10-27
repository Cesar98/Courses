import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);

    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, index) {
        return ListTile(
          leading: Icon(Icons.map, color: Theme.of(context).indicatorColor),
          title: Text(scans[index].value),
          subtitle: Text(scans[index].id.toString()),
          trailing: Icon(Icons.arrow_forward, color: Colors.black),
          onTap: () {
            print(scans[index].id);
          },
        );
      },
    );
  }
}
