import 'package:flutter/material.dart';
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
      body: Center(
        child: Text('Home Page'),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
