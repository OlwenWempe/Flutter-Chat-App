import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: alignment == Alignment.centerLeft
                  ? Radius.circular(12)
                  : Radius.circular(0),
              bottomRight: alignment == Alignment.centerRight
                  ? Radius.circular(12)
                  : Radius.circular(0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message,
              style: TextStyle(fontSize: 20,
                  color: Colors.white),
            ),
            Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 100,)
          ],
        ),
      ),
    );
  }
}
