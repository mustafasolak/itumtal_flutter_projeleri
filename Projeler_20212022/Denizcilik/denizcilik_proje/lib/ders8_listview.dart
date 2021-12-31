import 'package:flutter/material.dart';

void main(){
  runApp(ListViewKullanimi());
}

class ListViewKullanimi extends StatelessWidget {
  const ListViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewKullanimi"),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color:Colors.blue,
            ),
          ],
        )
      ),
    );
  }
}
