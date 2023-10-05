import 'package:flutter/material.dart';

class ExplorComponent extends StatefulWidget {
  const ExplorComponent({super.key});

  @override
  State<ExplorComponent> createState() => _ExplorComponentState();
}

class _ExplorComponentState extends State<ExplorComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            _kategori(),
            _listtrend(),
            _more()
          ],
        ),
      );
  }

  Widget _kategori() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Trend Topics",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
        ],
      ),
    );
  }

  Widget _listtrend() {
    return Padding(
      padding: EdgeInsets.only(left: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                  "#Trending1",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1591160690555-5debfba289f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z29sZGVuJTIwcmV0cmlldmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                "#Trending2",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1591160690555-5debfba289f0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z29sZGVuJTIwcmV0cmlldmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                "#Trending3",
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _more() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Load More Trendings",
            style: TextStyle(
              color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

}