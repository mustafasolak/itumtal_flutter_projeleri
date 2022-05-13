import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ders11_resim_galerisi/rg_ana_sayfa.dart';
import 'ders11_resim_galerisi/rg_resim_goster.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/rg_anasayfa": (BuildContext context) => ResimGalerisiAnaSayfa(),
      //"/rg_resim_goster" : (BuildContext context) => ResimGostericiSayfasi("cicek"),
    },
    initialRoute: "/rg_anasayfa",
  ));
}
