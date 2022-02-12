import 'package:bilisim_proje/ders11_stateful_widget/ders11_2_hesap_makinesi.dart';
import 'package:bilisim_proje/ders11_stateful_widget/ders11_sayac_uygulamasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ders11_stateful_widget/ders11_3_resim_galerisi.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/ders11_sayac" : (context) => Ders11_SayacUygulamasi(),
        "/ders11_2_hesapmakinesi" : (context) => Ders11_2_HesapMakinesi(),
        "/ders11_3_resimgalerisi" : (context) => Ders11_3_ResimGalerisi(),
      },
      initialRoute: "/ders11_3_resimgalerisi",
    )
  );
}



/*

Text(
      "Merhaba",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
      ),
    ),
 */
