import 'package:flutter/material.dart';
import 'film_detay.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Ekran"),
      ),
      body: Column(
        children: [
          Text(
            "Ana Ekran sayfası",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilmDetay(),
                    ),
                  );
                  */
                  Navigator.pushNamed(context, "/film_detay");
                },
                child: Text(
                  "Film Detaya Git",
                ),
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

        ],
      ),
    );
  }
}
