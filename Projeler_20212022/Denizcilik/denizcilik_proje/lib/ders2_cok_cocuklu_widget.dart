import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ali",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
            ),
          ),
          Text(
            "Veli",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.redAccent,
            ),
          ),
          Text(
            "Hasan",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.pinkAccent,
            ),
          ),
        ],
      ),
    ),
  );
}
