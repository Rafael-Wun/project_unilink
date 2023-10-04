import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32.0,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text('username'),
        ],
      ),
    );
  }
}
