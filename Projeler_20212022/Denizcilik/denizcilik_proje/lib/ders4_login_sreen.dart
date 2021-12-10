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
        backgroundColor: Colors.brown,
        appBar: AppBar(
          elevation: 20,
          backgroundColor: Colors.brown,
          title: Text(
            "Login Screen",
          ),
          // Başlık ortalansın
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20,),
            //padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20,),
            //padding: EdgeInsets.only(left: 5, top: 30, right: 10, bottom: 10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown[800],
            ),

            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/resimler/loginimage.png",
                  height: 70,
                  width: 70,
                ),
                SizedBox(height: 30,),
                Text(
                  "Username :",
                  style: TextStyle(
                    color: Colors.brown[200],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(),
                SizedBox(height: 20,),
                Text(
                  "Password :",
                  style: TextStyle(
                    color: Colors.brown[200],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(),
                SizedBox(height: 30,),
                RaisedButton(
                  color: Colors.brown[400],
                  onPressed: () {
                    print("Login button pressed !");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
