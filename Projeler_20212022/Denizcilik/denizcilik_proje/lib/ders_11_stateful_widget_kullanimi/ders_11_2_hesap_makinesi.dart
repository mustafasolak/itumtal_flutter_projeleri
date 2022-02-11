import 'package:flutter/material.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  double sayi1 = 0, sayi2 = 0, sonuc = 0;
  TextEditingController controllerSayi1 = TextEditingController();
  TextEditingController controllerSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hesap Makinesi"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: controllerSayi1,
                    decoration: InputDecoration(
                      hintText: "1.sayıyı giriniz",
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    controller: controllerSayi2,
                    decoration: InputDecoration(
                      hintText: "2.sayıyı giriniz",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Sonuç : $sonuc",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            sayi1 = double.parse( controllerSayi1.text );
                            sayi2 = double.parse( controllerSayi2.text );
                            sonuc = sayi1 + sayi2;
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 25),
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
                          style: TextStyle(fontSize: 25),
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
                          style: TextStyle(fontSize: 25),
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
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
