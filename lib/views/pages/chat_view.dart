import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/components/direct_msg.dart';
import 'package:unilink/views/components/group_msg.dart';
import 'package:unilink/views/components/story.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<Story> stories = List.generate(6, (index) => Story());
  final List<Widget> tabs = const [
    Tab(
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.black,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            'Direct Message',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Icon(
            Icons.group,
            color: Colors.black,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            'Group',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
  ];

  final List<Widget> tabBarViews = const [
    DirectMsg(),
    GroupMsg(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hi, Matthew')),
      body: Container(
        color: Colors.grey.shade200,
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: stories,
                ),
              ),
              TabBar(tabs: tabs),
              SizedBox(
                height: deviceHeight * .5,
                child: TabBarView(
                  children: tabBarViews,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
