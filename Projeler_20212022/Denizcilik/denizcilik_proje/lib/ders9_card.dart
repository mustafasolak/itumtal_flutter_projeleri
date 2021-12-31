import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CardWidget());
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("İstanbul Hakkında"),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Color(0xffeeeeee),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hikayeler"),

                          Row(
                            children: [

                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/resimler/loginimage.png",
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          "İstanbul Boğazı",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Image.asset("assets/resimler/bogaz.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "31 Aralık 2021",
                          ),
                          Spacer(),
                          Text(
                            "Ekleyen: admin",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: Text(
                          "İstanbul Boğazı Asya ve Avrupa kıtasını birbirine bağlar.",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("devamını oku"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          "İstanbul Boğazı",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Image.asset("assets/resimler/bogaz.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "31 Aralık 2021",
                          ),
                          Spacer(),
                          Text(
                            "Ekleyen: admin",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: Text(
                          "İstanbul Boğazı Asya ve Avrupa kıtasını birbirine bağlar.",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("devamını oku"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                margin: EdgeInsets.all(10),
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          "İstanbul Boğazı",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Image.asset("assets/resimler/bogaz.jpg"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "31 Aralık 2021",
                          ),
                          Spacer(),
                          Text(
                            "Ekleyen: admin",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: Text(
                          "İstanbul Boğazı Asya ve Avrupa kıtasını birbirine bağlar.",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("devamını oku"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
