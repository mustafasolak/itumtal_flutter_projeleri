import 'package:bilisim_proje/ders11_stateful_widget/ders11_2_hesap_makinesi.dart';
import 'package:bilisim_proje/ders11_stateful_widget/ders11_sayac_uygulamasi.dart';
import 'package:bilisim_proje/ders12_drawer_widget/ayarlar.dart';
import 'package:bilisim_proje/ders12_drawer_widget/hakkimizda.dart';
import 'package:bilisim_proje/ders12_drawer_widget/iletisim.dart';
import 'package:flutter/material.dart';

import 'ders11_stateful_widget/ders11_3_resim_galerisi.dart';
import 'ders12_drawer_widget/ders12_drawer_widget.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/ders11_sayac": (context) => Ders11_SayacUygulamasi(),
      "/ders11_2_hesapmakinesi": (context) => Ders11_2_HesapMakinesi(),
      "/ders11_3_resimgalerisi": (context) => Ders11_3_ResimGalerisi(),
      "/ders12_drawer_widget": (context) => Ders12_DrawerMenu(),
      "/ders12_hakkimizda": (context) => Ders12_Hakkimizda(),
      "/ders12_iletisim": (context) => Ders12_Iletisim(),
      "/ders12_ayarlar": (context) => Ders12_Ayarlar(),
      //"/rg_resim_gosterici" : (context) => ResimGosterici(),
    },
    initialRoute: "/ders12_drawer_widget",
  ));
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
