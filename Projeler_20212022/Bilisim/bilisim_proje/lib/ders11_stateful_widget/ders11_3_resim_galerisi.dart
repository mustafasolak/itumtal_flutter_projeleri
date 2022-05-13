import 'package:bilisim_proje/ders11_stateful_widget/ders11_4_resim_goster.dart';
import 'package:flutter/material.dart';

class Ders11_3_ResimGalerisi extends StatefulWidget {
  const Ders11_3_ResimGalerisi({Key? key}) : super(key: key);

  @override
  _Ders11_3_ResimGalerisiState createState() => _Ders11_3_ResimGalerisiState();
}

class _Ders11_3_ResimGalerisiState extends State<Ders11_3_ResimGalerisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resim Galerisi",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  // Araba Resimleri için
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("araba tıklandı");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResimGosterici("Araba Resimleri"),
                          ),
                        );

                        // Navigator.pushNamed(context, "/rg_resim_gosterici");
                      },
                      child: Card(
                        elevation: 20,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Image.asset("assets/araba/araba2.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Araba Resimleri"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Hayvan Resimleri için
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("hayvan tıklandı");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResimGosterici("Hayvan Resimleri"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 20,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Image.asset("assets/hayvan/hayvan3.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Hayvan Resimleri"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Çiçek Resimleri için
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("çiçek tıklandı");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResimGosterici("Çiçek Resimleri"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 20,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Image.asset("assets/cicek/cicek1.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Çiçek Resimleri"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Şehir Resimleri için
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("şehir tıklandı");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResimGosterici("Şehir Resimleri"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 20,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Image.asset("assets/sehir/sehir1.jpg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Şehir Resimleri"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
