import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/components/post_grid.dart';
import 'package:unilink/views/components/tagged_grid.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.grid_on_sharp,
        color: Colors.grey,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.tag_faces,
        color: Colors.grey,
      ),
    ),
  ];

  final List<Widget> tabBarViews = const [
    PostGrid(),
    TaggedGrid(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              _buildProfileTop(),
              SizedBox(
                height: deviceHeight * .1,
              ),
              _buildProfile(),
              TabBar(
                tabs: tabs,
              ),
              SizedBox(
                height: 640,
                child: TabBarView(
                  children: tabBarViews,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTop() {
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

  Widget buildCoverImage() {
    return Container(
      color: Colors.grey,
      child: Image.asset(
        'assets/tori_gate.jpg',
        width: deviceWidth,
        height: deviceHeight * .2,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildAvatar() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/hyouka.jpg'),
          radius: 64,
        ),
      ],
    );
  }

  Widget _buildProfile() {
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
          height: 8,
        ),
        Text(
          'Photographer | Basketball',
          style: TextStyle(color: Colors.grey[400]),
        ),
        SizedBox(
          height: 8,
        ),
        _buildFollow(),
      ],
    );
  }

  void dummy() {
    return;
  }

  Widget _buildFollow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: dummy,
          child: Text(
            '999 Followers',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: dummy,
          child: Text(
            '999 Following',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}