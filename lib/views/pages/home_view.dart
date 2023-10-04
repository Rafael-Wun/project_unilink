import 'package:flutter/material.dart';
import 'package:unilink/views/components/create_post.dart';
import 'package:unilink/views/components/post_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PostCard postCard1 = PostCard();
  PostCard postCard2 = PostCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Unilink')),
      body: Container(
        color: Colors.grey.shade200,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                CreatePost(),
                postCard1,
                postCard2,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
