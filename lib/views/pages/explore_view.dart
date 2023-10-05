import 'package:flutter/material.dart';
import 'package:unilink/views/components/explore/explore_componenet.dart';
import 'package:unilink/views/components/explore/search_explore.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  ExplorComponent kategori1 = ExplorComponent();
  ExplorComponent kategori2 = ExplorComponent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Unilink')),
      body: Container(
        color: Colors.white70,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                SearchExp(),
                kategori1,
                kategori2,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
