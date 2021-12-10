import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "User Login",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/resimler/loginimage.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20,),
            Text(
              "Username :",
            ),
            TextField(),
            SizedBox(height: 20,),
            Text(
              "Password :",
            ),
            TextField(),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.purple,
              onPressed: () {
                print("tıklandı");
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
