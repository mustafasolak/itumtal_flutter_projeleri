import 'package:flutter/material.dart';

class ResimGosterici extends StatefulWidget {
  ResimGosterici(this.kategori);

  String kategori = "";

  @override
  State<ResimGosterici> createState() {
    print("buraya geldim. gelen veri :$kategori");
    return _ResimGostericiState(kategori);
  }
}

class _ResimGostericiState extends State<ResimGosterici> {
  _ResimGostericiState(this.kategori);
  String kategori = "";

  int sayac = 0;

  List<String> arabaResimleri = [
    "assets/araba/araba1.jpg",
    "assets/araba/araba2.jpg",
    "assets/araba/araba3.jpg",
    "assets/araba/araba4.jpg",
  ];

  List<String> hayvanResimleri = [
    "assets/hayvan/hayvan1.jpg",
    "assets/hayvan/hayvan2.jpg",
    "assets/hayvan/hayvan3.jpg",
    "assets/hayvan/hayvan4.png",
  ];

  List<String> cicekResimleri = [
    "assets/cicek/cicek1.jpg",
    "assets/cicek/cicek2.jpg",
    "assets/cicek/cicek3.jpg",
    "assets/cicek/cicek4.jpg",
  ];

  List<String> sehirResimleri = [
    "assets/sehir/sehir1.jpg",
    "assets/sehir/sehir2.jpg",
    "assets/sehir/sehir3.jpg",
    "assets/sehir/sehir4.jpg",
  ];

  String resimUrl = "";

  @override
  Widget build(BuildContext context) {
    if (kategori == "Araba Resimleri")
      resimUrl = arabaResimleri[sayac];
    else if (kategori == "Hayvan Resimleri")
      resimUrl = hayvanResimleri[sayac];
    else if (kategori == "Çiçek Resimleri")
      resimUrl = cicekResimleri[sayac];
    else if (kategori == "Şehir Resimleri") resimUrl = sehirResimleri[sayac];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Resim Gösterici"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(kategori),
                Image.asset(resimUrl),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sayac--;
                            if (sayac < 0) sayac = arabaResimleri.length - 1;
                            print(sayac);
                          });
                        },
                        child: Text("Önceki")),
                    Text("${sayac + 1}/${arabaResimleri.length}"),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sayac++;
                            if (sayac == arabaResimleri.length) sayac = 0;
                            print(sayac);
                          });
                        },
                        child: Text("Sonraki")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
