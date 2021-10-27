import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:qrscanner/pages/adresses_page.dart';
import 'package:qrscanner/pages/maps_page.dart';
import 'package:qrscanner/providers/db_provider.dart';
import 'package:qrscanner/providers/scan_list_provider.dart';
import 'package:qrscanner/providers/ui_provider.dart';
import 'package:qrscanner/widgets/custom_bottom_nav_bar.dart';
import 'package:qrscanner/widgets/custom_floating_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.restore_from_trash_rounded))
        ],
      ),
      body: _HomePageBody(),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: CustomNavBar(),
    );
  }
}


class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final uIProvider = Provider.of<UIProvider>(context);

    final currentIndex = uIProvider.selectedMenuOption;

    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.loadScansByType('geo');
        return MapsPage();
      case 1:
        scanListProvider.loadScansByType('http');
        return AdressesPage();
      default:
        return MapsPage();
    }

  }
}