import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/utils/utils.dart';

class ScanListTiles extends StatelessWidget {

  final String type;

  const ScanListTiles({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);

    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, index) {
        return Dismissible(
          key: UniqueKey(),
          background: ListTile(
            title: Text('Remove'),
            leading: Icon(Icons.delete),
            trailing: Icon(Icons.delete),
          ),
          onDismissed: ( DismissDirection direction ) {
            Provider.of<ScanListProvider>(context, listen: false).deleteScanById(scans[index].id!);
          },
          child: ListTile(
            leading: Icon(type == 'http' ? Icons.open_in_browser_rounded : Icons.add_location_sharp, color: Theme.of(context).indicatorColor),
            title: Text(scans[index].value),
            subtitle: Text(scans[index].id.toString()),
            trailing: Icon(Icons.arrow_forward, color: Colors.black),
            onTap: () => launchURL(context, scans[index]),
          ),
        );
      },
    );
  }
}