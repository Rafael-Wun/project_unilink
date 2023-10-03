import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PostTime extends StatelessWidget {
  // const PostTime({Key? key, required this.name,}) : super(key: key);
  // final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://blog.tiket.com/wp-content/uploads/2020/12/14.-Jabo-village.jpg'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Budi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 250,
          child: Image.network(
            'https://images.unsplash.com/photo-1605907153179-8b364644a241?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cjM0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: [
              Icon(Icons.favorite_border, size: 32,),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.chat_bubble_outline_outlined, size: 32,),
              SizedBox(
                width: 15,
              ),
              Icon(Icons.send_outlined, size: 32,)
            ],
          ),
        ),
      ],
    );
  }
}
