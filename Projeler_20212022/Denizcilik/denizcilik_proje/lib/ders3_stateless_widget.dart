import 'package:flutter/material.dart';

void main() {
  runApp(AnaEkran());
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "getir",
          ),
        ),
        body: Column(
          children: [
            Text(
              "Selam size kaptanlar ...",
              style: TextStyle(
                fontSize: 25,
                color:Colors.purple,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Denizin mavisi gözlerinde yer etmiş..",
              style: TextStyle(
                fontSize: 25,
                color:Colors.green
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Bir tek ümidim olsa ömür boyu beklerdim..",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
