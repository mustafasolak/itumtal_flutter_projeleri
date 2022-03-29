import 'package:flutter/material.dart';

class ResimGostericiSayfasi extends StatelessWidget {
  ResimGostericiSayfasi(this.gelenSayfaAdi);

  String gelenSayfaAdi = "";

  var isimler = {
    "cicek" : "Çiçek Resimleri",
    "araba" : "Araba Resimleri",
    "hayvan" : "Hayvan Resimleri",
    "sehir" : "Şehir Resimleri",
  };
  String? metin = "";
  Widget build(BuildContext context) {
    print("Gelen sayfa : $gelenSayfaAdi");
    if(gelenSayfaAdi != null){
      metin = isimler[gelenSayfaAdi];
    }
    return Scaffold(
        appBar: AppBar(
            title: Text("Resim Gösterme Sayfası")
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(metin!),
                Card(
                  elevation: 10,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/cicek/cicek1.jpg",fit: BoxFit.cover),

                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Önceki"),),
                    Text("1/10"),
                    ElevatedButton(onPressed: (){}, child: Text("Sonraki"),),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
