import 'package:flutter/material.dart';

void main() {
  runApp(AnaEkran());
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.white60,
          elevation: 15,
          title: Text(
            "trendyol",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/resimler/loginimage.png",
              height: 80,
              width: 80,
            ),
            Text(
              "Username :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(),
            Text(
              "Password :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
