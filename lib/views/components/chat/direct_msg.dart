import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/chat.dart';

class DirectMsg extends StatefulWidget {
  const DirectMsg({super.key});

  @override
  State<DirectMsg> createState() => _DirectMsgState();
}

class _DirectMsgState extends State<DirectMsg> {
  Chat chat1 = Chat(
    avatar:
        'https://images.unsplash.com/photo-1611403119860-57c4937ef987?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXNpYW4lMjBtZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    username: 'matthew',
    recentChat: 'lorem ipsum',
  );
  Chat chat2 = Chat(
    avatar:
        'https://images.unsplash.com/photo-1492447166138-50c3889fccb1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGFzaWFuJTIwbWVuJTIwYmVhY2h8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    username: 'fwlouis',
    recentChat: 'lorem ipsum',
  );

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
