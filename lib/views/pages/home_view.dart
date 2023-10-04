import 'package:flutter/material.dart';
import 'package:unilink/views/components/create_post.dart';
import 'package:unilink/views/components/post_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PostCard post1 = PostCard(
    avatar:
        'https://images.unsplash.com/photo-1600793575654-910699b5e4d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Z3RyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    caption: 'Lorem Ipsum',
    photo:
        'https://images.unsplash.com/photo-1602977050077-a669542f8dd8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGd0cnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    username: 'Anthony',
  );
  PostCard post2 = PostCard(
    avatar:
        'https://images.unsplash.com/photo-1591160690555-5debfba289f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z29sZGVuJTIwcmV0cmlldmVyJTIwcHVwcHl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    caption: 'Lorem Ipsum',
    photo:
        'https://images.unsplash.com/photo-1573074617613-fc8ef27eaa2f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2hldnJvbGV0JTIwY2FtYXJvfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    username: 'Rafael',
  );

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
                post1,
                post2,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
