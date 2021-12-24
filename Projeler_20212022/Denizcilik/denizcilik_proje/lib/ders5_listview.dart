import 'package:flutter/material.dart';

void main() {
  runApp(ListeKullanimi());
}

class ListeKullanimi extends StatelessWidget {
  const ListeKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Liste Kullanımı"),
        ),
        body: ListView(
          children: [
            Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color:Colors.red,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color:Colors.green,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color:Colors.yellow,
                ),

                /*Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "M",
                  style: TextStyle(
                    fontSize:40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
