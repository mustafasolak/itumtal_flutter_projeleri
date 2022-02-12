import 'package:flutter/material.dart';

class Ders11_SayacUygulamasi extends StatefulWidget {
  const Ders11_SayacUygulamasi({Key? key}) : super(key: key);

  @override
  _Ders11_SayacUygulamasiState createState() => _Ders11_SayacUygulamasiState();
}

class _Ders11_SayacUygulamasiState extends State<Ders11_SayacUygulamasi> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayaç Uygulaması"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac++;
                  });
                  print(sayac);
                },
                child: Text(
                  "Sayacı Arttır",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac--;
                  });
                  print(sayac);
                },
                child: Text(
                  "Sayacı Azalt",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          Text(
            "Sayaç : $sayac",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
