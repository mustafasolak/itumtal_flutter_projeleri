import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                height: 100,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Text("Simple Sheet"),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        enableDrag: true,
                        isScrollControlled: false,
                        isDismissible: false,
                        backgroundColor: Color(0x00ffffff),
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30.0),
                              ),
                              color: Color(0xffffffff),
                            ),
                            child: Center(
                              child: ElevatedButton(
                                child: Text("Kapat"),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(10),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  "https://www.hobisi.com/wp-content/uploads/2019/05/resim-nedir-turleri-ve-stilleri.jpg",
                  width: 150,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/140x100')),
            ClipOval(
              child: Image.network(
                "https://www.hobisi.com/wp-content/uploads/2019/05/resim-nedir-turleri-ve-stilleri.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 55,
                itemBuilder: (context, i) {
                  return Text("Eleman $i");
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.deepOrange,
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
