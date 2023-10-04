import 'package:flutter/material.dart';
import 'package:unilink/views/components/explore_componenet.dart';
import 'package:unilink/views/main_menu.dart';
import 'package:unilink/views/pages/explore_view.dart';
import 'package:unilink/views/pages/login_home.dart';

void main() => runApp(UnilinkApp());

late double deviceWidth;
late double deviceHeight;

class UnilinkApp extends StatelessWidget {
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unilink App',
      //home: MainMenu(),
      home: LoginHome(),
      //home: Explore(),
    );
  }
}