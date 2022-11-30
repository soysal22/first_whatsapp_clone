import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Chat? chat;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeData.length,
      itemBuilder: (context, index) => Column(children: [
        const Divider(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(fakeData[index].avatarUrl.toString()),
            backgroundColor: const Color.fromARGB(255, 14, 125, 8),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                fakeData[index].name.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                fakeData[index].time.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          subtitle: Container(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              fakeData[index].message.toString(),
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
        )
      ]),
    );
  }
}
