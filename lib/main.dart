import 'package:flutter/material.dart';
import 'package:unilink/models/user.dart';
import 'package:unilink/views/pages/login_view.dart';

void main() => runApp(UnilinkApp());

late double deviceWidth;
late double deviceHeight;

User currentUser = User(
  email: 'raph@gmail.com',
  password: '123',
  fName: 'Rafael',
  lName: 'Wun',
  username: 'wun_rafael',
  avatar:
      'https://images.unsplash.com/photo-1487309078313-fad80c3ec1e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXNpYW4lMjBtZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  coverImage:
      'https://images.unsplash.com/photo-1492571350019-22de08371fd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFzaWF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  followers: 4,
  following: 4,
  univ: 'Tarumanagara',
  bio: 'Menyukai petualangan, fotografi, dan eksplorasi alam bebas',
);

class UnilinkApp extends StatelessWidget {
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unilink App',
      home: LoginView(),
    );
  }
}
