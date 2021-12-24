import "package:flutter/material.dart";

void main() {
  runApp(ContainerKullanimi());
}

class ContainerKullanimi extends StatelessWidget {
  const ContainerKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Container Kullanımı",
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //margin: EdgeInsets.all(10.0),
              margin:EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.only(top:10, left:30),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.red,
              ),
              child: Text(
                "Selam",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.blue,
              ),
              child: Center(
                child:Text("M"),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
