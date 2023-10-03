import 'package:flutter/material.dart';
import 'package:unilink/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@mattloveblue'),
      ),
      body: ListView(
        children: <Widget>[
          buildProfileHeader(),
          SizedBox(height: deviceHeight * .1),
          buildProfileBody(),
        ],
      ),
    );
  }

  Widget buildProfileHeader() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: deviceHeight * .125,
          child: buildAvatar(),
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

  Widget buildAvatar() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/hyouka.jpg'),
          radius: 64,
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget buildProfileBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
        buildFollow(),
      ],
    );
  }

  void dummy() {
    return;
  }

  Widget buildFollow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: dummy,
            child: Text(
              '999 Followers',
              style: TextStyle(color: Colors.black),
            )),
        TextButton(
            onPressed: dummy,
            child: Text(
              '999 Following',
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
