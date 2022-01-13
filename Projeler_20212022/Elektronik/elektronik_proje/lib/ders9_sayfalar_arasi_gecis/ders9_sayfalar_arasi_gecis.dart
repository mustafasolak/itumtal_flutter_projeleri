import 'package:flutter/material.dart';

import 'giris_sayfasi.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KullaniciGirisEkrani(),
    );
  }
}




