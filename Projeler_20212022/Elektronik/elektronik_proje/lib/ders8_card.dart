import 'package:flutter/material.dart';

void main() {
  runApp(CardKullanimi());
}

class CardKullanimi extends StatelessWidget {
  const CardKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CardKullanimi"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 15,

                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        child: Text(
                          "Başlık",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                        heightFactor: 3,
                      ),
                      Image.asset("assets/resimler/blogpost.png"),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10,),
                          Text("31 Aralık 2021"),
                          Spacer(),
                          Text("Ekleyen: admin"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Text("Kısa açıklama metni buraye gelecek"),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "devamını oku",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 15,

                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        child: Text(
                          "Başlık",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                        heightFactor: 3,
                      ),
                      Image.asset("assets/resimler/blogpost.png"),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10,),
                          Text("31 Aralık 2021"),
                          Spacer(),
                          Text("Ekleyen: admin"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Text("Kısa açıklama metni buraye gelecek"),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "devamını oku",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 15,

                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        child: Text(
                          "Başlık",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                        heightFactor: 3,
                      ),
                      Image.asset("assets/resimler/blogpost.png"),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10,),
                          Text("31 Aralık 2021"),
                          Spacer(),
                          Text("Ekleyen: admin"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Text("Kısa açıklama metni buraye gelecek"),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "devamını oku",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 15,

                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        child: Text(
                          "Başlık",
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        alignment: Alignment.centerLeft,
                        heightFactor: 3,
                      ),
                      Image.asset("assets/resimler/blogpost.png"),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10,),
                          Text("31 Aralık 2021"),
                          Spacer(),
                          Text("Ekleyen: admin"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: Text("Kısa açıklama metni buraye gelecek"),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "devamını oku",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
