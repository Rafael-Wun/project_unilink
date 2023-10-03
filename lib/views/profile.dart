import 'package:flutter/material.dart';
import 'package:unilink/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@mattloveblue'),
      ),
      body: ListView(
        children: <Widget>[
          buildHeader(),
          SizedBox(height: deviceHeight * .3),
          buildBody(),
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
        SizedBox(
          height: 32,
        ),
        Row(
          children: [
            Text('999 Followers'),
            SizedBox(
              width: 16,
            ),
            Text(
              '|',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text('999 Following'),
          ],
        ),
      ],
    );
  }

  Widget buildBody() {
    return Container(
      margin: EdgeInsets.only(left: 8.0, right: 8.0),
      padding: EdgeInsets.all(16.0),
      width: deviceWidth,
      height: deviceHeight,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
