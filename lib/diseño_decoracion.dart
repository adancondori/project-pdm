import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(icons),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}
