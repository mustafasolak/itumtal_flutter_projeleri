import 'package:flutter/material.dart';

class ResimGostericiSayfasi extends StatefulWidget {
  ResimGostericiSayfasi(this.gelenSayfaAdi);

  String gelenSayfaAdi = "";

  @override
  State<ResimGostericiSayfasi> createState() => _ResimGostericiSayfasiState();
}

class _ResimGostericiSayfasiState extends State<ResimGostericiSayfasi> {
  var isimler = {
    "cicek": "Çiçek Resimleri",
    "araba": "Araba Resimleri",
    "hayvan": "Hayvan Resimleri",
    "sehir": "Şehir Resimleri",
  };

  String? metin = "";

  String resimYolu = "";

  int sayac = 1;
  int toplamResimSayisi = 4;

  Widget build(BuildContext context) {
    print("Gelen sayfa : ${widget.gelenSayfaAdi}");
    if (widget.gelenSayfaAdi != null) {
      metin = isimler[widget.gelenSayfaAdi];
      resimYolu = "assets/${widget.gelenSayfaAdi}/" +
          widget.gelenSayfaAdi +
          sayac.toString() +
          ".jpg";
      print("Resim Yolu : $resimYolu");
    }
    return Scaffold(
        appBar: AppBar(title: Text("Resim Gösterme Sayfası")),
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
                        Image.asset(resimYolu, fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sayac--;
                          if (sayac <= 0) sayac = toplamResimSayisi;
                          print(sayac);
                        });
                      },
                      child: Text("Önceki"),
                    ),
                    Text("$sayac/$toplamResimSayisi"),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sayac++;
                          if (sayac > toplamResimSayisi) sayac = 1;
                          print(sayac);
                        });
                      },
                      child: Text("Sonraki"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
