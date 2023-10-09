import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/chat_list.dart';

class Chat extends StatefulWidget {
  final String avatar;
  final String username;
  final String recentChat;

  const Chat({
    Key? key,
    required this.avatar,
    required this.username,
    required this.recentChat,
  }) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                      '${widget.avatar}',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${widget.username}'),
                          SizedBox(
                            height: 6,
                          ),
                          Text('${widget.recentChat}'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
