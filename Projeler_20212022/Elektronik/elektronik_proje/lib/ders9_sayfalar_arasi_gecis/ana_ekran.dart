import 'package:flutter/material.dart';
import 'profil.dart';

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Ana Ekran",
            ),
          ),
          body: Column(
            children: [
              Text(
                "Ana ekrana hoşgeldiniz.",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Geri Dön",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profil(),
                        ),
                      );
                    },
                    child: Text(
                      "Profil",
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
