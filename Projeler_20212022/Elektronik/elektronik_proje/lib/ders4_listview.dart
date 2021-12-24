import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(Liste());
}

class Liste extends StatelessWidget {
  const Liste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Liste Kullanımı"),
          centerTitle: true,
        ),
        body:ListView(
          padding: EdgeInsets.all(15.0),
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color:Colors.red,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color:Colors.green,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color:Colors.brown,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color:Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
