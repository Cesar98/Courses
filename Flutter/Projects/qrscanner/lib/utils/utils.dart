import 'package:flutter/cupertino.dart';
import 'package:qrscanner/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(BuildContext context, ScanModel scan) async {

  final String url = scan.value;

  if(scan.type == 'http'){
    return await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }else{
    Navigator.pushNamed(context, 'map_page', arguments: scan);
  }

}
