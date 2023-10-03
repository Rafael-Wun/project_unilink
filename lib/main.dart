import 'package:flutter/material.dart';
import 'package:unilink/views/components/nav.dart';

void main() => runApp(StopwatchApp());

double deviceWidth = 0;
double deviceHeight = 0;

class StopwatchApp extends StatelessWidget {
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}
