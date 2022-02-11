import 'package:flutter/material.dart';

void main() {
  runApp(SayacUygulamasi());
}

class SayacUygulamasi extends StatefulWidget {
  const SayacUygulamasi({Key? key}) : super(key: key);

  @override
  _SayacUygulamasiState createState() => _SayacUygulamasiState();
}

class _SayacUygulamasiState extends State<SayacUygulamasi> {

  int sayac =3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sayaç Uygulaması"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {

                setState(() {
                  sayac ++;
                });

                print(sayac);
              },
              child: Text(
                "Sayacı Arttır",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {

                setState(() {
                  sayac --;
                });

                print(sayac);
              },
              child: Text(
                "Sayacı Azalt",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),

            Text(
              "Sayaç : $sayac",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
