import 'package:flutter/material.dart';
import 'package:unilink/views/componentds/nav.dart';


void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget {
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Navbar(),
    );
  }
}