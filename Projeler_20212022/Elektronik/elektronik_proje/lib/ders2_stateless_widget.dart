import 'package:flutter/material.dart';

void main(){
  runApp(AnaEkran());
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hepsinerede"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            // Ana eksende yani dikeyde hizalama
            mainAxisAlignment: MainAxisAlignment.center,
            // Çapraz eksende yani yatayda hizalama
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Text("Ali",style: TextStyle(fontSize: 30,),),
              Text("Veli", style: TextStyle(fontSize: 30,),),
              Text("Hasan", style: TextStyle(fontSize: 30,),),
              Text("Nuri", style: TextStyle(fontSize: 30,),),
            ],
          ),
        ),
      ),
    );
  }
}
