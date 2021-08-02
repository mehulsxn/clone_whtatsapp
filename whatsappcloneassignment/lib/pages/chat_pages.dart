import 'package:flutter/material.dart';
import 'package:whatsappcloneassignment/UI_files.dart';
import 'package:whatsappcloneassignment/model/chat_model.dart';

class ChatPage extends StatefulWidget {

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatModel> chats = [
    ChatModel(icon: 'person.svg',
        name: 'Class of 201',
        currentMessage: 'Hello',
        isGroup: true,
        time: '23:40'),
    ChatModel(icon: 'person.svg',
        name: 'Virat',
        currentMessage: 'When you are coming?',
        isGroup: false,
        time: '23:40'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
        body: ListView.builder(itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chatModel: chats[index],),
        ),
    );
  }
}
