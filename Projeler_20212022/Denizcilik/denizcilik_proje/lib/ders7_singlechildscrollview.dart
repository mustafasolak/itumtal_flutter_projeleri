import 'package:flutter/material.dart';

void main(){
  runApp(SingleChildScrollViewKullanimi());
}

class SingleChildScrollViewKullanimi extends StatelessWidget {
  const SingleChildScrollViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.green,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.pink,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.green,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 250,
                color:Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
