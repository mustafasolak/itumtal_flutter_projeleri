import 'package:flutter/material.dart';
import 'giris_ekrani.dart';

void main() {
  runApp(SayfalarArasiGecis());
}

class SayfalarArasiGecis extends StatelessWidget {
  const SayfalarArasiGecis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}



