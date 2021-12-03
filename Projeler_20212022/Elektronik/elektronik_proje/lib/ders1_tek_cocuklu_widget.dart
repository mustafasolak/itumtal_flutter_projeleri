import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    Center(
      child: Text(
        "Ben ortalandım",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          color : Colors.yellowAccent,
          fontWeight: FontWeight.w600,
        ),
      ),
    )
  );
}