import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/colors/colors.dart';
import 'package:unilink/views/pages/edit_profile.dart';
import 'package:unilink/views/components/profile/post_grid.dart';
import 'package:unilink/views/components/profile/tagged_grid.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({super.key});

  @override
  State<OtherProfile> createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // title: Text("BudiRene"),
          backgroundColor: Colors.brown,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton (
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text(
                      "Anthony",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
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
          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1696484863977-7f7feb9a2adf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
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
          'Anthony',
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
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return EditProfile();
            }));
          },
          child: Text(
            'Photographer | Basketball',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        _buildFollow(),
        _fm()
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
            '999K Followers',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: dummy,
          child: Text(
            '999K Following',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _fm() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Message',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                backgroundColor: Colors.white38,
                padding: EdgeInsets.fromLTRB(56, 14, 56, 14),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Follow',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                backgroundColor: AppColors.primaryColor,
                padding: EdgeInsets.fromLTRB(56, 14, 56, 14),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
