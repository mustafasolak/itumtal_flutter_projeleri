import 'giris_ekrani.dart';
import 'kitap_detay.dart';
import 'ana_ekran.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(NamedRoute());
}

class NamedRoute extends StatelessWidget {
  const NamedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/giris" : (context) => GirisEkrani(),
        "/ana_ekran" : (context) => AnaEkran(),
        "/kitap_detay" : (context) => KitapDetay(),
      },
      initialRoute: "/giris",

    );
  }
}






