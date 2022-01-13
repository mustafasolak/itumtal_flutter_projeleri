import 'package:flutter/material.dart';
import 'ana_ekran.dart';
class KullaniciGirisEkrani extends StatelessWidget {
  const KullaniciGirisEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kullanıcı Giriş Ekranı"),
        ),
        body: Column(
          children: [
            Text("Kullanıcı Giriş Ekranı tasarlanacak"),
            ElevatedButton(
              onPressed: () {
                print("tıklandı1");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnaEkran(),
                  ),
                );
                print("tıklandı2");
              },
              child: Text(
                "Giriş Yap",
              ),
            ),
          ],
        ),
      ),
    );
  }
}