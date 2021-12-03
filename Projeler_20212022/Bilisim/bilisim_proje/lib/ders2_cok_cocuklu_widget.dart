import 'package:flutter/material.dart';

void main() {
  runApp(Column(
    textDirection: TextDirection.ltr,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "İşlemci",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.green,
        ),
      ),
      Text(
        "Ekran Kartı",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      Text(
        "RAM 8 GB",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 25,
          color: Colors.yellow,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.ltr,
        children: [
          Text(
            "Kaan Efe",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          Text(
            "Ali Kerem",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          Text(
            "Defne",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ],
      ),
      Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.ltr,
        children: [
          Icon(
            Icons.home,
            textDirection: TextDirection.ltr,
            color: Colors.yellow,
            size: 50,
          ),
          Icon(
            Icons.access_time,
            textDirection: TextDirection.ltr,
            color: Colors.green,
            size: 50,
          ),
          Icon(
            Icons.cake,
            textDirection: TextDirection.ltr,
            color: Colors.red,
            size: 50,
          ),
        ],
      ),
    ],
  ));
}
