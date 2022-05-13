import 'package:flutter/material.dart';

void main() {
  runApp(GirisEkrani());
}

class GirisEkrani extends StatelessWidget {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  GirisEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("giriş formu"),
            TextField(
              controller: controllerUsername,
              decoration: InputDecoration(
                hintText: "enter username ..",
              ),
            ),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(hintText: "password .."),
            ),
            OutlinedButton(
              child: Text("Giriş"),
              onPressed: () {
                //print("tıklandı");
                print(controllerUsername.text);
                print(controllerPassword.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
