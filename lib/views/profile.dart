import 'package:flutter/material.dart';
import 'package:unilink/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('username'),
      ),
      body: buildProfileBanner(),
    );
  }

  Widget buildProfileBanner() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/tori_gate.jpg', width: deviceWidth),
      ],
    );
  }
}
