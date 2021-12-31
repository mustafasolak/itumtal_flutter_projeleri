import "package:flutter/material.dart";
import 'package:widgetdenemelerim/home/widgets/body.dart';
import 'package:widgetdenemelerim/home/widgets/bottom_app_bar.dart';
import 'package:widgetdenemelerim/home/widgets/fab.dart';

import 'home/widgets/appbar.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: buildAppBar(),
          body: Body(),
          extendBody: true,
          floatingActionButton: BuildFab(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: buildBottomAppBar() ,
        ));
  }

}
