import 'package:flutter/material.dart';

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
          title: Text("ListViewKullanimi"),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.favorite, color: Colors.white, size: 30),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Fevzi Çakmak Mahallesi",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30),
              title: Text(
                "Fevzi Çakmak Mahallesi",
              ),
              subtitle: Text("Kiptaş konutları"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xff990000),
            ),
            Container(
              height: 200,
              color:Colors.deepOrange,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text("A"),
                        radius: 50,
                      ),
                      CircleAvatar(
                        child: Text("B"),
                        radius: 50,
                      ),
                      CircleAvatar(
                        child: Text("C"),
                        radius: 50,
                      ),
                      CircleAvatar(
                        child: Text("D"),
                        radius: 50,
                      ),
                      CircleAvatar(
                        child: Text("C"),
                        radius: 50,
                      ),
                      CircleAvatar(
                        child: Text("D"),
                        radius: 50,
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
