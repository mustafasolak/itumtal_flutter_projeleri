import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Text(
      "Merhaba",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
