import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappcloneassignment/model/chat_model.dart';

class PersonalChat extends StatefulWidget{
  final ChatModel chatModel;
  PersonalChat({required this.chatModel});
  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 69,
       titleSpacing: 0,
       leading: InkWell(
         onTap: (){
           Navigator.pop(context);
         },

         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.arrow_back,size: 23,),
             CircleAvatar(
               child: SvgPicture.asset(
                 widget.chatModel.isGroup ? 'assets/groups.svg' : 'assets/person.svg',
                 color: Colors.white,
                 height: 36,
                 width: 36,
               ),
               radius: 20,
               backgroundColor: Colors.blueGrey,
             ),
           ],
         ),
       ),
        title: InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(6.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatModel.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('Last seen today at 23:08',style: TextStyle(fontSize: 11),)
              ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam),onPressed: (){},),
          IconButton(icon: Icon(Icons.call),onPressed: (){},),
          PopupMenuButton(
              onSelected: (value){
                print(value);
              },itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("View Contact"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("Media,links and docs"),
                value: "New Broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Leave group"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("Mute Notifications"),
                value: "New Group",
              ),
            ];
          })
        ],
      ),

    );
  }
}