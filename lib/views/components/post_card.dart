import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

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
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1591160690555-5debfba289f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z29sZGVuJTIwcmV0cmlldmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
              ),
              SizedBox(
                width: 16.0,
              ),
              Text('Username'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.more_vert),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPostContent() {
    return Container(
      child: Image.network(
          'https://images.unsplash.com/photo-1625794084867-8ddd239946b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Z29sZGVuJTIwcmV0cmlldmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
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
      padding: EdgeInsetsDirectional.all(16.0),
      child: Expanded(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae nunc sed velit dignissim sodales ut eu sem integer.',
        ),
      ),
    );
  }
}
