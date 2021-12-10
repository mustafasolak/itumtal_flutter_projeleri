import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "User Login",
          ),
        ),
        body: Center(
          child: Container(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/resimler/loginimage.png",
                  width: 80,
                  height: 80,
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
        ),
      ),
    );
  }
}
