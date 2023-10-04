import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat.dart';

class GroupMsg extends StatefulWidget {
  const GroupMsg({super.key});

  @override
  State<GroupMsg> createState() => _GroupMsgState();
}

class _GroupMsgState extends State<GroupMsg> {
  Chat chat1 = Chat();
  Chat chat2 = Chat();

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
