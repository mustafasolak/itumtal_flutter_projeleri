import 'package:flutter/material.dart';

void main() {
  runApp(ListTileKullanimi());
}

class ListTileKullanimi extends StatelessWidget {
  const ListTileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xffFBFAFB),
      appBar: AppBar(
        title: Text("ListTile Kullanımı"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              print("Social tıklandı");
            },
            onLongPress: (){
              print("Social longpress");
            },
            leading: CircleAvatar(
              backgroundColor: Color(0xffF8F1FF),
              child: Icon(
                Icons.group,
                color: Color(0xff6827F4),
                size: 30,
              ),
            ),
            title: Text(
              "Social",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "Vlad Kaipluchkin from Linkedin...",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Color(0xff6827F4),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                "14 new",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            onTap: (){
              print("Promotions tıklandı");
            },
            onLongPress: (){
              print("Promotions uzun süre basıldı");
            },
            leading: CircleAvatar(
              backgroundColor: Color(0xffF8F1FF),
              child: Icon(
                Icons.bookmark,
                color: Color(0xff4AA74B),
                size: 30,
              ),
            ),
            title: Text(
              "Promotions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "Vlad Kaipluchkin from Linkedin...",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Color(0xff4AA74B),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                "99+ new",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
