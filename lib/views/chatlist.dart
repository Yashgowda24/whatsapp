import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model.dart';

class MyChatList extends StatelessWidget {
  MyChatList({super.key});

  final List<ChatItem> chatItems = [
    ChatItem(name: "Yash", msg: "Hello there!", icon: Icons.face),
    ChatItem(name: "Raju", msg: "Come soon", icon: Icons.face),
    ChatItem(name: "Charlie", msg: "bye", icon: Icons.face),
    ChatItem(name: "Alice", msg: "See you soon!", icon: Icons.face),
    ChatItem(
        name: "Rakesh",
        msg: "Where are you, come soon to home",
        icon: Icons.face),
    ChatItem(name: "Peter", msg: "Let's catch up soon!", icon: Icons.face),
    ChatItem(name: "Parker", msg: "Hello there!", icon: Icons.face),
    ChatItem(name: "Tony", msg: "i will come tmr, okay?", icon: Icons.face),
    ChatItem(name: "Naruto", msg: "Let's catch up soon!", icon: Icons.face),
    ChatItem(name: "Luffy", msg: "Hello there!", icon: Icons.face),
    ChatItem(name: "Zoro", msg: "How are you?", icon: Icons.face),
    ChatItem(name: "Bob", msg: "Let's catch up soon!", icon: Icons.face),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatItems.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = chatItems[index];
        return ListTile(
          leading: Icon(chat.icon),
          title: Text(chat.name),
          subtitle: Text(chat.msg),
        );
      },
    );
  }
}
