import 'package:flutter/material.dart';
import 'film_detay.dart';
import 'ana_ekran.dart';
import 'giris_ekrani.dart';

void main() {
  runApp(NamedRoute());
}

class NamedRoute extends StatelessWidget {
  const NamedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/anasayfa"   : (context) => AnaEkran(),
        "/giris"      : (context) => GirisEkrani(),
        "/film_detay" : (context) => FilmDetay()
      },
      initialRoute: "/giris",
    );
  }
}
