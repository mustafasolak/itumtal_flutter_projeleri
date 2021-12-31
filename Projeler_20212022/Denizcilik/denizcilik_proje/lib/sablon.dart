import 'package:flutter/material.dart';

void main(){
  runApp(Sablon());
}

class Sablon extends StatelessWidget {
  const Sablon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body: Text("Selam"),
      ),
    );
  }
}
