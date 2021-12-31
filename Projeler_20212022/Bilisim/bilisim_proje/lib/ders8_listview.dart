import 'package:bilisim_proje/der5_listview.dart';
import 'package:flutter/cupertino.dart';
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
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: 100,
                color: Colors.deepPurpleAccent,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left:10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 60,
                    ),

                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.green,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.yellow,
              ),
            ],
          )),
    );
  }
}
