import 'package:flutter/material.dart';
import 'package:unilink/views/main_menu.dart';

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
      home: MainMenu(),
    );
  }
}