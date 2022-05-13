import 'package:flutter/material.dart';

class Ders12_Hakkimizda extends StatelessWidget {
  const Ders12_Hakkimizda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(
          "Hakkımızda",
        ),
      ),
      body: Text("Hakkımızda sayfası"),
    );
  }
}
