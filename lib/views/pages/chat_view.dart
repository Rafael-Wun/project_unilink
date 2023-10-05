import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/components/chat/direct_msg.dart';
import 'package:unilink/views/components/chat/group_msg.dart';
import 'package:unilink/views/components/chat/story.dart';
import 'package:unilink/views/colors/colors.dart';

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
      appBar: AppBar(title: Text('Hi, Matthew'), backgroundColor: AppColors.primaryColor),
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
              TabBar(tabs: tabs, indicatorColor: AppColors.secondaryColor,),
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
