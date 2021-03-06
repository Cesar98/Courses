import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      String hintText, String labelText, IconData icon) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.purple),
        prefixIcon: Icon(icon, color: Colors.purple));
  }
}
