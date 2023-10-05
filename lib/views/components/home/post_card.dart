import 'package:flutter/material.dart';
import 'package:unilink/views/colors/colors.dart';
import 'package:unilink/views/pages/other_profile_view.dart';

class PostCard extends StatefulWidget {
  final String avatar;
  final String username;
  final String caption;
  final String photo;

  const PostCard({
    Key? key,
    required this.avatar,
    required this.username,
    required this.caption,
    required this.photo,
  }) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          _buildPostHeader(),
          _buildPostContent(),
          _buildPostControls(),
          _buildPostBody(),
        ],
      ),
    );
  }

  Widget _buildPostHeader() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OtherProfile();
              }));
            },
            child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('${widget.avatar}'),
              ),
              SizedBox(
                width: 16.0,
              ),
              Text('${widget.username}'),
            ],
          ),),
          Row(
            children: [
              Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPostContent() {
    return Container(
      child: Image.network('${widget.photo}'),
    );
  }

  Widget _buildPostControls() {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.favorite_border_outlined,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.chat_bubble_outline_outlined,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.share_outlined,
          ),
        ],
      ),
    );
  }

  Widget _buildPostBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        '${widget.caption}',
        textAlign: TextAlign.start,
      ),
    );
  }
}
