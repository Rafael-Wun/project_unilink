import 'package:flutter/material.dart';
import 'package:unilink/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@mattloveblue'),
      ),
      body: ListView(
        children: <Widget>[
          buildHeader(),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: deviceHeight * .125,
          child: buildProfile(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/tori_gate.jpg',
          width: deviceWidth,
          height: deviceHeight * .2,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfile() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/hyouka.jpg'),
          radius: 64,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Matthew Rene',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Student of Tarumanagara University',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Photographer | Basketball',
          style: TextStyle(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
