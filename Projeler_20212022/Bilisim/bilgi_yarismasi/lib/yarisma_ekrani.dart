import 'package:flutter/material.dart';

class YarismaEkrani extends StatefulWidget {
  @override
  State<YarismaEkrani> createState() => _BilgiYarismasiAppState();
}

class _BilgiYarismasiAppState extends State<YarismaEkrani> {
  List<String> sorular = [
    'Türkiye\'nin başkenti İstanbul\'dur.',
    "İstanbul 29 Mayıs 1453 tarihinde fethedilmiştir.",
    "Bilgisayarda veriler monitörde tutulur.",
    "Bilgisayarlar ikilik sayı sisteminde çalışır.",
  ];

  List<bool> cevaplar = [
    false,
    true,
    false,
    true,
  ];

  List<Icon> simgeler = [];

  int soruNo = 0;
  int dogruSayisi = 0;
  int yanlisSayisi = 0;
  bool yarismaBittimi = false;
  double skor = 0;
  double puanMiktari = 0;

  @override
  void initState() {
    super.initState();
    print("Uygulama açıldııı");
    puanMiktari = 100 / sorular.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildAppBar(),
              buildSoruIcerik(),
              buildPagination(),
              buildDikeyBosluk(),
              buildButtons(),
              buildDikeyBosluk(),
              //buildDogruSayisi(),
              //buildDikeyBosluk(),
              //buildYanlisSayisi(),
              Row(
                children: simgeler,
              )
            ],
          ),
        ),
      ),
    );
  }

  void cevapla(bool cevap) {
    if (yarismaBittimi) // if(yarismaBittimi == true)
      return;

    setState(() {
      if (cevaplar[soruNo] == cevap) {
        print("Süpersin kovboy :) ");
        // dogruSayisi = dogruSayisi + 1;
        // dogruSayisi += 1;
        dogruSayisi++;
        skor += puanMiktari;
        simgeler.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        print("Hooppss! Sakin ol şampiyonita :( ");
        yanlisSayisi++;
        simgeler.add(
          Icon(Icons.close, color: Colors.red),
        );
      }

      print("soruNo:$soruNo,  sorular.length-1 :${sorular.length - 1} ");
      if (soruNo < sorular.length - 1)
        soruNo++;
      else {
        yarismaBittimi = true;
        showDialog<String>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => AlertDialog(
            elevation: 20,
            title: Text('Yarışma Bitti'),
            content: Text('Yarışma sonucunda puanınız :😄\n $skor'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  setState(() {
                    yarismaBittimi = false;
                    skor = 0;
                    soruNo = 0;
                    simgeler.clear();
                    dogruSayisi = 0;
                    yanlisSayisi = 0;
                  });

                  Navigator.pop(context, 'OK');
                },
                child: const Text('Yeniden Başlat'),
              ),
            ],
          ),
        );
      }
    });

    print(soruNo);
  }

  Row buildYanlisSayisi() {
    return Row(
      children: [
        Text("Yanlış sayısı : "),
        Text("$yanlisSayisi"),
      ],
    );
  }

  Row buildDogruSayisi() {
    return Row(
      children: [
        Text("Doğru sayısı : "),
        Text("$dogruSayisi"),
      ],
    );
  }

  SizedBox buildDikeyBosluk() {
    return SizedBox(
      height: 15,
    );
  }

  Row buildButtons() {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              cevapla(true);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text(
              "Doğru",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              cevapla(false);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              "Yanlış",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Text buildPagination() => Text("${soruNo + 1}/${sorular.length}");

  Container buildSoruIcerik() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        sorular[soruNo],
        style: TextStyle(
          fontSize: 17,
          letterSpacing: 1.5,
          color: Colors.black45,
        ),
      ),
    );
  }

  Row buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "İTÜ MTAL BİLGİ YARIŞMASI",
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightBlue,
          ),
        ),
        Text(
          "$skor",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
