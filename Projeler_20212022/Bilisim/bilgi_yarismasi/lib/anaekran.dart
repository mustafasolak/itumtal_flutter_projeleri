import 'package:bilgi_yarismasi/yarisma_ekrani.dart';
import 'package:flutter/material.dart';

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('İTÜ MTAL BİLGİ YARIŞMASI'),
        ),
        body: Center(
            child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YarismaEkrani(),
                  ),
                );
              },
              child: Text('Yarışmaya Geç'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Soru Ekle'),
            ),
          ],
        )),
      ),
    );
  }
}
