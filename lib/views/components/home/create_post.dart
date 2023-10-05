import 'package:flutter/material.dart';
import 'package:unilink/main.dart';
import 'package:unilink/views/colors/colors.dart';
import 'package:unilink/views/components/text_field.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          _buildTextPost(),
          Divider(
            color: AppColors.primaryColor,
            thickness: 1,
            height: 32,
          ),
          _buildMediaPost(),
        ],
      ),
    );
  }

  Widget _buildTextPost() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('${currentUser.avatar}'),
          radius: 24,
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: NewTextField(
            controller: _textController,
            labelText: 'What\'s on your mind?',
            obsecureText: false,
            borderRadius: 50.0,
          ),
        ),
      ],
    );
  }

  Widget _buildMediaPost() {
    return Row(
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
    );
  }
}
