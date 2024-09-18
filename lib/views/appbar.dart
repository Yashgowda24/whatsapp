import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/controllers/bottomcontroller.dart';
import 'package:whatsapp/views/BottomNavPages/calls.dart';
import 'package:whatsapp/views/BottomNavPages/chats.dart';
import 'package:whatsapp/views/BottomNavPages/status.dart';

class MyScaffold extends StatelessWidget {
  final BottomNavController btmController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Whatsapp"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ]),
        
        body: Obx(() {
          switch (btmController.selectedIndex.value) {
            case 0:
              return const ChatPage();
            case 1:
              return const StatusPage();
            case 2:
              return const CallPage();
            default:
              return const ChatPage();
          }
        }),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
              currentIndex: btmController.selectedIndex.value,
              onTap: (index) {
                btmController.changeIndex((index));
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_rounded), label: "Chats"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.circle_outlined), label: "Status"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call_outlined), label: "Calls"),
              ]);
        }));
  }
}
