import 'package:flutter/material.dart';
import 'package:whatsappcloneassignment/Widgets/receivemsg.dart';
import 'package:whatsappcloneassignment/Widgets/sendersmsg.dart';

import 'Receiveimage.dart';
import 'Sendimage.dart';

class ChatMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 140,
      child: ListView(
        shrinkWrap: true,
        children: [
          SendMessage(
            message: 'Hello',
          ),
          ReceiveMessage(
            reply: 'Quite a long time everyone!',color: Colors.lightBlueAccent,replyname:'Mohit' ,time: '20:09',
          ),
          SendMessage(
            message: 'Finally man',
          ),
          ReceiveImage(),
          SizedBox(
            height: 3,
          ),
          ReceiveMessage(
            reply: 'Anyone know..where is sunil these days?',color:Colors.deepPurple ,replyname:'Mehul' , time: '20:11',
          ),
          SendMessage(
            message: 'Yeah he shifted to USA in 2014',
          ),
          ReceiveMessage(
            reply: 'We are all grown up',color: Colors.deepPurple,replyname: 'Mehul',time: '20:11',
          ),
          SendMessage(
            message: 'Lets make a plan for reunion',
          ),
          ReceiveMessage(
            reply: 'Yeah we should def do it',color:  Colors.lightBlueAccent,replyname:'Mohit' ,time: '20:12',
          ),
          SendMessage(
            message: 'yeah we can do that',
          ),
          ReceiveMessage(
            reply: 'I really miss college man',color: Colors.red ,replyname:'Sumit' ,time: '20:12'
          ),
          SendMessage(
            message: 'Yeah that was the best time',
          ),
          ReceiveMessage(
            reply: 'Covid made our life hell',color: Colors.lightBlueAccent,replyname:'Mohit' ,time: '20:13'
          ),
          SendMessage(
            message: 'Yes man thats all of us',
          ),
          ReceiveMessage(
            reply: 'I hope everything gets back to normal',color: Colors.orange,replyname: 'Virat',time: '20:13'
          ),
          SendMessage(
            message: 'YES',
          ),
          ReceiveMessage(
            reply: 'Then we can go for the GOA trip xD',color:Colors.red ,replyname:'Sumit' ,time: '20:15'
          ),
          SendMessage(
            message: 'HAHAHAH',
          ),
          SizedBox(
            height: 3,
          ),
          SendImage(),
          SizedBox(
            height: 3,
          ),
          ReceiveMessage(
            reply: 'LOLLLLL',color: Colors.orange,replyname: 'Virat',time: '20:16'
          ),
        ],
      ),
    );
  }
}