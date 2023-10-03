import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PostTime extends StatefulWidget {
  const PostTime({super.key});

  @override
  State<PostTime> createState() => _PostTimeState();
}

class _PostTimeState extends State<PostTime> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'UNILINK',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black12,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            _Uplod(),
            SizedBox(
              height: 20,
            ),
            _post1(),
            SizedBox(
              height: 10,
            ),
            _post2()
          ],
        ),
      ),
    );
  }

  Widget _Uplod() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(
        //   color: Colors.black,
        //   width: 1
        // )
      ),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://blog.tiket.com/wp-content/uploads/2020/12/14.-Jabo-village.jpg'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Padding(
              padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.camera_alt_outlined),
                Icon(Icons.photo_library_outlined)
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Icon(Icons.camera_alt_outlined,),
          //     Icon(Icons.photo_library_outlined)
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _post1() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
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
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
            ),
          ),
        ],
      ),
    );
  }

  Widget _post2() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
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
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
            ),
          ),
        ],
      ),
    );
  }

}