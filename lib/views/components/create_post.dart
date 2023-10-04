import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          _buildTextPost(),
          _buildMediaPost(),
        ],
      ),
    );
  }

  Widget _buildTextPost() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/hyouka.jpg'),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaPost() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: [
              Icon(
                Icons.camera,
                size: 16.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text('Camera'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.image,
                size: 16.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text('Gallery'),
            ],
          ),
        ],
      ),
    );
  }
}
