import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/group.dart';

class GroupMsg extends StatefulWidget {
  const GroupMsg({super.key});

  @override
  State<GroupMsg> createState() => _GroupMsgState();
}

class _GroupMsgState extends State<GroupMsg> {
  Group chat1 = Group(
      avatar:
          'https://images.unsplash.com/photo-1543807535-eceef0bc6599?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZW5kc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      groupname: 'study group',
      recentChat: 'lorem ipsum');
  Group chat2 = Group(
      avatar:
          'https://images.unsplash.com/photo-1560174038-da43ac74f01b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2hlc3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      groupname: 'Chess Club',
      recentChat: 'lorem ipsum');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          chat1,
          chat2,
        ],
      ),
    );
  }
}
