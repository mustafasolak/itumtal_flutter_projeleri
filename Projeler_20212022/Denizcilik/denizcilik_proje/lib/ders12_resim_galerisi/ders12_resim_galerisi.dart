import 'package:flutter/material.dart';

class Ders12_Resim_Galerisi extends StatelessWidget {
  const Ders12_Resim_Galerisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resim Galerisi Ana Sayfa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/ders12_resimgoster");
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
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
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/ders12_resimgoster");
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
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
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/ders12_resimgoster");
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/sehir/sehir1.jpg"),
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
                      Navigator.pushNamed(context, "/ders12_resimgoster");
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/cicek/cicek4.jpg"),
                            SizedBox(height: 10,),
                            Text("Çiçek Resimleri"),
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
    );
  }
}
