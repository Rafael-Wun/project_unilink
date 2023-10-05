import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/group.dart';

class GroupMsg extends StatefulWidget {
  const GroupMsg({super.key});

  @override
  State<GroupMsg> createState() => _GroupMsgState();
}

class _GroupMsgState extends State<GroupMsg> {
  Group chat1 = Group();
  Group chat2 = Group();

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
