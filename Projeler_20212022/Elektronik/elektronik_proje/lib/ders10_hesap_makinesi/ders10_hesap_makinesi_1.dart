import 'package:flutter/material.dart';

void main() {
  runApp(ArttirmaUygulamasi());
}

class ArttirmaUygulamasi extends StatefulWidget {
  const ArttirmaUygulamasi({Key? key}) : super(key: key);

  @override
  _ArttirmaUygulamasiState createState() => _ArttirmaUygulamasiState();
}

class _ArttirmaUygulamasiState extends State<ArttirmaUygulamasi> {

  int sayac=1;
  String url = "https://blog.ofix.com/wp-content/uploads/2019/09/en_iyi_10_ucretsiz_stok_fotograf_sitesi_ofix_blog.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Sayaç Arttırma Uygulaması"),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayac += 1;
                      });
                      print("Sayaç :$sayac");
                    },
                    child: Text(
                      "Sayaç Arttır",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayac -= 1;
                      });
                      print("Sayaç :$sayac");
                    },
                    child: Text(
                      "Sayaç Azalt",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Sayaç : $sayac",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15,),
              Image.network("https://www.ideasoft.com.tr/wp-content/uploads/2020/03/ucretsiz-stok-fotograf-1-1024x536.jpg",fit: BoxFit.cover),

            ],
          )),
    );
  }
}
