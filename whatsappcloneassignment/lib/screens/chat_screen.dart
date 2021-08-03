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
        name: 'Class of 2021',
        currentMessage: 'Hello',
        isGroup: true,
        time: '20:19'),


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
