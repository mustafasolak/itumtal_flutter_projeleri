import 'dart:convert';

import 'package:flutter/material.dart';

class Ders11_2_HesapMakinesi extends StatefulWidget {
  const Ders11_2_HesapMakinesi({Key? key}) : super(key: key);

  @override
  _Ders11_2_HesapMakinesiState createState() => _Ders11_2_HesapMakinesiState();
}

class _Ders11_2_HesapMakinesiState extends State<Ders11_2_HesapMakinesi> {

  double sayi1=0, sayi2=0, sonuc=0;
  TextEditingController controllerSayi1 = TextEditingController();
  TextEditingController controllerSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controllerSayi1,
              decoration: InputDecoration(
                hintText: "enter 1st number",
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: controllerSayi2,
              decoration: InputDecoration(
                hintText: "enter 2nd number",
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Sonuç : $sonuc",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayi1 = double.parse( controllerSayi1.text );
                      sayi2 = double.parse( controllerSayi2.text );
                      sonuc = sayi1 + sayi2;
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayi1 = double.parse( controllerSayi1.text );
                      sayi2 = double.parse( controllerSayi2.text );
                      sonuc = sayi1 - sayi2;
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayi1 = double.parse( controllerSayi1.text );
                      sayi2 = double.parse( controllerSayi2.text );
                      sonuc = sayi1 * sayi2;
                    });
                  },
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayi1 = double.parse( controllerSayi1.text );
                      sayi2 = double.parse( controllerSayi2.text );
                      sonuc = sayi1 / sayi2;
                    });
                  },
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
