import 'package:flutter/material.dart';
void main(){
  runApp(ListTileKullanimi());
}

class ListTileKullanimi extends StatelessWidget {
  const ListTileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text("ListTile Kullanımı",),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            ListTile(
              // onTap özelliğine anonim fonksiyon verdik
              onTap: (){
                print("Sarı Tıklandı");
              },
              onLongPress: (){
                print("Sarı uzun süre basıldı");
              },
              tileColor: Colors.yellow,
              leading: CircleAvatar(
                radius: 30,
                child: Text("M"),
              ),
              title:Text("Mustafa SOLAK"),
              subtitle: Text("Bilişim Tek. Öğrt."),
              trailing: Icon(
                Icons.favorite,
              ),
            ),
            SizedBox(height:30),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                Icons.playlist_add
              ),
            ),
            SizedBox(height:30),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                  Icons.playlist_add
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
              thickness: 3.0,
            ),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                  Icons.playlist_add
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
              thickness: 3.0,
            ),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                  Icons.playlist_add
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
              thickness: 3.0,
            ),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                  Icons.playlist_add
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.black,
              thickness: 3.0,
            ),
            ListTile(
              onTap : (){
                print("beyaz tıklandı");
              },
              onLongPress: (){
                print("beyaz uzun süreli tıklandı");
              },
              tileColor: Colors.white,
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color:Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:Center(child: Text("S")),
              ),
              title: Text("Kaan Efe SOLAK"),
              subtitle: Text("Atom mühendisi"),
              trailing: Icon(
                  Icons.playlist_add
              ),
            ),
          ],
        ),
      ),
    );
  }
}
