import 'package:flutter/material.dart';
import 'package:whatsapp/views/chatlist.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(40)),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.radio_button_off_outlined),
                    hintText: "Ask Meta AI or Search"),
              )),
        ),
        Expanded(child: MyChatList()),
      ],
    );
  }
}
