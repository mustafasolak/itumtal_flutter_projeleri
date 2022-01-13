import 'package:flutter/material.dart';

class KitapDetay extends StatelessWidget {
  const KitapDetay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap Detay"),
      ),
      body: Column(
        children: [
          Text("Kitap Detay sayfası"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Geri Dön",
            ),
          ),
        ],
      ),
    );
  }
}