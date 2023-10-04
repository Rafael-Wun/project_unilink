import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          Column(
            children: [
              Text('username'),
              Text('the fox is jumping around the fence'),
            ],
          ),
        ],
      ),
    );
  }
}
