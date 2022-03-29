import 'package:elektronik_proje/ders11_resim_galerisi/rg_resim_goster.dart';
import 'package:flutter/material.dart';

class ResimGalerisiAnaSayfa extends StatelessWidget {
  const ResimGalerisiAnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resimler Ana Sayfa")
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       // Navigator.pushNamed(context, "/rg_resim_goster");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResimGostericiSayfasi("cicek"),
                          ),
                        );

                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/cicek/cicek1.jpg",fit: BoxFit.cover),
                              SizedBox(height: 10,),
                              Text("Çiçek Resimleri"),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, "/rg_resim_goster");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResimGostericiSayfasi("hayvan"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/hayvan/hayvan1.jpg"),
                              SizedBox(height: 10,),
                              Text("Hayvan Resimleri"),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, "/rg_resim_goster");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResimGostericiSayfasi("sehir"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/sehir/sehir1.jpg",fit: BoxFit.cover),
                              SizedBox(height: 10,),
                              Text("Şehir Resimleri"),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        //Navigator.pushNamed(context, "/rg_resim_goster");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResimGostericiSayfasi("araba"),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/araba/araba2.jpg"),
                              SizedBox(height: 10,),
                              Text("Araba Resimleri"),
                              SizedBox(height: 10,),
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
        ),
      )
    );
  }
}
