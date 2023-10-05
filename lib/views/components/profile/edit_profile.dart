import 'package:flutter/material.dart';
import 'package:unilink/main.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfile> {
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
              _displayname(),
              _university(),
              _Aboutme(),
              _accom(),
              _Email(),
              _Password(),
              _Logout(),
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
      ],
    );
  }
}

  Widget _displayname() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Display Name'),
            onChanged: (value) {
              // Logika saat teks berubah
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Logika saat tombol edit ditekan
          },
        ),
      ],
    );
  }

  Widget _university() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'University'),
            onChanged: (value) {
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
          },
        ),
      ],
    );
  }

  Widget _Aboutme() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'About Me'),
            onChanged: (value) {
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
          },
        ),
      ],
    );
  }

  Widget _accom() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Accomplishment'),
            onChanged: (value) {
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
          },
        ),
      ],
    );
  }

  Widget _Email() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              // Logika saat teks berubah
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Logika saat tombol edit ditekan
          },
        ),
      ],
    );
  }

  Widget _Password() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Password'),
            onChanged: (value) {
              // Logika saat teks berubah
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Logika saat tombol edit ditekan
          },
        ),
      ],
    );
  }

  Widget _Logout() {
    return ElevatedButton (
      onPressed: (){
        _Logout();
    },
      child: Text('Log Out'),
    );
  }
