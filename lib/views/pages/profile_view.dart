import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/colors/colors.dart';
import 'package:unilink/views/pages/edit_profile.dart';
import 'package:unilink/views/components/profile/post_grid.dart';
import 'package:unilink/views/components/profile/tagged_grid.dart';

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
                indicatorColor: AppColors.secondaryColor,
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
      child: Image.network(
        '${currentUser.coverImage}',
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
          backgroundImage: NetworkImage('${currentUser.avatar}'),
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
          '${currentUser.fName} ' + '${currentUser.lName}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Student of ' + '${currentUser.univ}' + ' University',
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
            '${currentUser.bio}',
            style: TextStyle(color: Colors.grey[400]),
            textAlign: TextAlign.center,
          ),
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
            '${currentUser.followers} Followers',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: dummy,
          child: Text(
            '${currentUser.following} Following',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
