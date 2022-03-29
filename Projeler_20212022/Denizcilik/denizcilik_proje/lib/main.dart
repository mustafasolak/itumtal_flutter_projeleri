import "package:flutter/material.dart";

import 'ders12_resim_galerisi/ders12_resim_galerisi.dart';
import 'ders12_resim_galerisi/ders12_resim_goster.dart';

void main() {
  runApp(
      MaterialApp(
        routes: {
          "/ders12_resimgalerisi" : (context) => Ders12_Resim_Galerisi(),
          "/ders12_resimgoster" : (context) => Ders12_Resim_Goster(),

        },
        initialRoute: "/ders12_resimgalerisi",
      )
  );
}
