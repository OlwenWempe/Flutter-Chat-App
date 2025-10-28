import 'package:chat_app_v2/widgets/chat_bubble.dart';
import 'package:chat_app_v2/widgets/chat_input.dart';
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return ChatBubble(
                alignment: index % 2 == 0
                  ? Alignment.centerLeft
                      : Alignment.centerRight,
                message: 'Hello');
          })
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
