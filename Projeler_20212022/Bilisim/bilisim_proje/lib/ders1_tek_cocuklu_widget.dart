import 'package:flutter/material.dart';

void main(){
  runApp(
    Center(
      child: Text(
        "Ortalı Yazı",
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w400,
          color: Colors.green,
        ),
      ),
    ),
  );
}