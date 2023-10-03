import 'package:flutter/material.dart';
import 'nav.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget {
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Navbar(),
    );
  }
}