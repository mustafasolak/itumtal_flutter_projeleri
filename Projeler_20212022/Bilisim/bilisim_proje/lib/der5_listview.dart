import "package:flutter/material.dart";

void main() {
  runApp(ListViewKullanimi());
}

class ListViewKullanimi extends StatelessWidget {
  const ListViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView Kullanımı",
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              // tüm alana yayılması için
              width: double.infinity,
              height: 250,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.green,
              ),
            ),
            Container(
              // tüm alana yayılması için
              width: double.infinity,
              height: 250,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.red,
              ),
            ),
            Container(
              // tüm alana yayılması için
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
