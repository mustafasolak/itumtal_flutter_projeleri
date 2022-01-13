
import 'package:flutter/material.dart';
import 'ana_ekran.dart';

class GirisEkrani extends StatelessWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Giriş Ekranı"),
      ),
      body: Column(
        children: [
          Text(
            "Giriş Ekranı",
          ),
          ElevatedButton(
            onPressed: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnaEkran(),
                ),
              );*/

              Navigator.pushNamed(context, "/anasayfa");
            },
            child: Text(
              "Giriş",
            ),
          ),
        ],
      ),
    );
  }
}
