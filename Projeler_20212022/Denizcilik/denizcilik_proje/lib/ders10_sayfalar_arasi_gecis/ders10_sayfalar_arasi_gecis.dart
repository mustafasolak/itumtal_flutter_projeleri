import 'package:flutter/material.dart';
import 'giris_ekrani.dart';
void main() {
  runApp(SayfalaArasiGecis());
}

class SayfalaArasiGecis extends StatelessWidget {
  const SayfalaArasiGecis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GirisEkrani(),
    );
  }
}






