import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 50,
        centerTitle: true,
        title: Text('Hi User'),
       actions: [
         IconButton(onPressed: (){
           print('Logout pressed');
         },
             icon: Icon(Icons.logout_rounded))
       ],
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hi, this is your message!',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white),
                  ),
                  Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 100,)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hi, this is your message!',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white),
                  ),
                  Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 100,)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hi, this is your message!',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white),
                  ),
                  Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 100,)
                ],
              ),
            ),
          ),

          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.add_outlined, color: Colors.white,)),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.send, color: Colors.white,)),
              ],
            ),

          )
        ],
      ),
    );
  }
}
