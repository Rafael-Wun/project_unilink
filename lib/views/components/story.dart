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
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1695374885715-6bc75534f7c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
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
