import 'package:flutter/material.dart';

void main() {
  runApp(ArttirmaUygulamasi2());
}

class ArttirmaUygulamasi2 extends StatefulWidget {
  const ArttirmaUygulamasi2({Key? key}) : super(key: key);

  @override
  _ArttirmaUygulamasi2State createState() => _ArttirmaUygulamasi2State();
}

class _ArttirmaUygulamasi2State extends State<ArttirmaUygulamasi2> {
  double sayi1 = 0, sayi2 = 0, sonuc = 0;
  TextEditingController controllerSayi1 = TextEditingController();
  TextEditingController controllerSayi2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Sayaç Arttırma Uygulaması"),
          ),
          body: Column(
            children: [
              TextField(
                controller: controllerSayi1,
                decoration: InputDecoration(hintText: "1.sayıyı giriniz"),
              ),
              TextField(
                controller: controllerSayi2,
                decoration: InputDecoration(
                  hintText: "2.sayıyı giriniz",
                ),
              ),
              Text(
                "Sonuç = $sonuc",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayi1 = double.parse( controllerSayi1.text );
                        sayi2 = double.parse( controllerSayi2.text );
                        sonuc = sayi1 + sayi2;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayi1 = double.parse( controllerSayi1.text );
                        sayi2 = double.parse( controllerSayi2.text );
                        sonuc = sayi1 - sayi2;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayi1 = double.parse( controllerSayi1.text );
                        sayi2 = double.parse( controllerSayi2.text );
                        sonuc = sayi1 * sayi2;
                      });
                    },
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sayi1 = double.parse( controllerSayi1.text );
                        sayi2 = double.parse( controllerSayi2.text );
                        sonuc = sayi1 / sayi2;
                      });
                    },
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

                ],
              ),

              /*  Row(
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
*/
            ],
          )),
    );
  }
}
