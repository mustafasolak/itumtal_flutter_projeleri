import 'package:elektronik_proje/UserLogin.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Routing());
}

class Routing extends StatelessWidget {
  const Routing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (BuildContext context) => Routing(),
        "/user_login" : (BuildContext context) => UserLogin(),
      },

      home: Scaffold(
        appBar: AppBar(
          title: Text("UserLogin"),
        ),
        body: FlatButton(
          child: Text("User login"),
          onPressed: (){
            Navigator.pushNamed(context, "/user_login");
          },
        ),
      ),
    );
  }
}
