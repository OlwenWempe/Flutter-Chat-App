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
            child: ListView(
              children: [
                ChatBubble(alignment: Alignment.centerRight, message: 'Hello'),
                ChatBubble(alignment: Alignment.centerLeft, message: 'Hi'),
                ChatBubble(alignment: Alignment.centerRight, message: 'How are you?'),
                ChatBubble(alignment: Alignment.centerLeft, message: 'I am fine, thank you'),
                ChatBubble(alignment: Alignment.centerRight, message: 'What about you?'),
                ChatBubble(alignment: Alignment.centerLeft, message: 'I am fine too'),

              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
