import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        "Ben ortalandım mı?",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.orangeAccent,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
