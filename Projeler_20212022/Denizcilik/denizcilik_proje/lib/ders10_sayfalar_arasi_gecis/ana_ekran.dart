import 'package:flutter/material.dart';
import 'kitap_detay.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Ekran"),
      ),
      body: Column(
        children: [
          Text("Ana Ekrana hoşgeldiniz"),
          ElevatedButton(
            onPressed: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KitapDetay(),
                ),
              );*/
              Navigator.pushNamed(context, "/kitap_detay");
            },
            child: Text(
              "Kitap Detaya Git",
            ),
          ),
        ],
      ),
    );
  }
}