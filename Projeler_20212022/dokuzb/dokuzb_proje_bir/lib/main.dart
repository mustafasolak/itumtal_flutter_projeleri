import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text("Merhaba Gençler, Nasılsınız ?",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30.0,
          color: Colors.lightGreenAccent,
        ),
      ),
    ),

  );
}
