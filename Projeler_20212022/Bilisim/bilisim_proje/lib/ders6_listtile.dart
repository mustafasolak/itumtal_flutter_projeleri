import "package:flutter/material.dart";

void main() {
  runApp(ListTileKullanimi());
}

class ListTileKullanimi extends StatelessWidget {
  const ListTileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffefefe),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MailBox",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.reorder,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  // arama  metni
                  labelText: "Search mail",
                  // aktif olduğunda kenarlık bilgileri
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xffdddddd),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // focus olduğunda, yani içine girildiğinde kenarlık bilgileri
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "  Primary",
                style: TextStyle(
                  fontSize: 15,
                  color:Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  print("Social ontap");
                },
                onLongPress: () {
                  print("Social onLongPress");
                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffF7F2FC),
                  child: Icon(
                    Icons.group,
                    color: Color(0xff9059F1),
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
                  "Vlad Kaipluchkin from Linkedind..",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.grey),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff6B25FA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("14 new",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  print("Promotions ontap");
                },
                onLongPress: () {
                  print("Promotions onLongPress");
                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffF7F2FC),
                  child: Icon(
                    Icons.bookmark,
                    color: Color(0xff58AF57),
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
                  "Vlad Kaipluchkin from Linkedind..",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.grey),
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff58AF57),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("99+ new",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
