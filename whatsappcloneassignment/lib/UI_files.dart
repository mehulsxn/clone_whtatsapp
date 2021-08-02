import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappcloneassignment/model/chat_model.dart';
import 'package:whatsappcloneassignment/pages/personalchatscreen.dart';

class CustomCard extends StatelessWidget {
  final ChatModel chatModel;
  CustomCard({required this.chatModel});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> PersonalChat()));
      },
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                child: SvgPicture.asset(
                  chatModel.isGroup ? 'assets/groups.svg' : 'assets/person.svg',
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
                radius: 29,
                backgroundColor: Colors.blueGrey,
              ),
              trailing: Text(chatModel.time),
              title: Text(
               chatModel.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    chatModel.currentMessage,
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 80.0),
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
