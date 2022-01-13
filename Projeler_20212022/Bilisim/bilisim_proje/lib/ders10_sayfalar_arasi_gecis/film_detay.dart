import 'package:flutter/material.dart';
class FilmDetay extends StatelessWidget {
  const FilmDetay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Detay"),
      ),
      body: Column(
        children: [
          Text(
            "Film Detay sayfası",
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Geri Dön",
            ),
          ),
        ],
      ),
    );
  }
}
