import 'package:flutter/material.dart';

class BuildFab extends StatefulWidget {
  const BuildFab({Key? key}) : super(key: key);

  @override
  _BuildFabState createState() => _BuildFabState();
}

class _BuildFabState extends State<BuildFab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

      onPressed: () {},
      child: Icon(Icons.add,),
    );
  }
}
