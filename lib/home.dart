// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/screens/call_screen.dart';
import 'package:whatsapp_clone_flutter/screens/chat_screen.dart';
import 'package:whatsapp_clone_flutter/screens/status_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 125, 8),
        title: const Text("WhatsApp"),
        bottom: TabBar(
          tabs: const [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text(" Sohbetler ")),
            Tab(child: Text(" Durum ")),
            Tab(child: Text(" Aramalar ")),
          ],
          controller: tabController,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2, color: Colors.white),
            ),
          ),
        ),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          Center(
              child: Text(
            "Kamera",
            style: TextStyle(fontSize: 25),
          )),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 14, 125, 8),
        onPressed: () => print("Sohbet Ekranına Hoşgeldiniz"),
        child: const Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}
