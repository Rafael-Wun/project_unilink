import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/chat.dart';

class DirectMsg extends StatefulWidget {
  const DirectMsg({super.key});

  @override
  State<DirectMsg> createState() => _DirectMsgState();
}

class _DirectMsgState extends State<DirectMsg> {
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
