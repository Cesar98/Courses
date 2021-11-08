import 'package:flutter/material.dart';

class NotificationsService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  static showSnackbar(String message) {
    final snackBar = new SnackBar(content: Text(message), backgroundColor: Colors.red, elevation: 10,);
    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
