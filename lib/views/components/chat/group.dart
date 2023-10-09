import 'package:flutter/material.dart';
import 'package:unilink/views/components/chat/group_list.dart';

class Group extends StatefulWidget {
  final String avatar;
  final String groupname;
  final String recentChat;

  const Group({
    Key? key,
    required this.avatar,
    required this.groupname,
    required this.recentChat,
  }) : super(key: key);

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return GroupDetailPage();
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
                        '${widget.avatar}'),
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
                          Text('${widget.groupname}'),
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
