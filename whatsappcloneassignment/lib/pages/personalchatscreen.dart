import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappcloneassignment/model/chat_model.dart';
import 'package:whatsappcloneassignment/pages/Receiveimage.dart';
import 'package:whatsappcloneassignment/pages/Sendimage.dart';
import 'package:whatsappcloneassignment/pages/receive.dart';
import 'package:whatsappcloneassignment/pages/senders.dart';

class PersonalChat extends StatefulWidget {
  final ChatModel chatModel;

  PersonalChat({required this.chatModel});

  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/bbg.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leadingWidth: 69,
            titleSpacing: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 23,
                  ),
                  CircleAvatar(
                    child: SvgPicture.asset(
                      widget.chatModel.isGroup
                          ? 'assets/groups.svg'
                          : 'assets/person.svg',
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
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(6.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.chatModel.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Last seen today at 23:08',
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.videocam),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
              ),
              PopupMenuButton(onSelected: (value) {
                print(value);
              }, itemBuilder: (BuildContext context) {
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
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 140,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SendMessage(
                        message: 'Hello',
                      ),
                      ReceiveMessage(
                        reply: 'Quite a long time everyone!',
                      ),
                      SendMessage(
                        message: 'Finally man',
                      ),
                      ReceiveImage(),
                      SizedBox(
                        height: 3,
                      ),
                      ReceiveMessage(
                        reply: 'Anyone know..where is sunil these days?',
                      ),
                      SendMessage(
                        message: 'Yeah he shifted to USA in 2014',
                      ),
                      ReceiveMessage(
                        reply: 'We are all grown up',
                      ),
                      SendMessage(
                        message: 'Lets make a plan for reunion',
                      ),
                      ReceiveMessage(
                        reply: 'Yeah we should def do it',
                      ),
                      SendMessage(
                        message: 'yeah we can do that',
                      ),
                      ReceiveMessage(
                        reply: 'I really miss college man',
                      ),
                      SendMessage(
                        message: 'Yeah that was the best time',
                      ),
                      ReceiveMessage(
                        reply: 'Covid made our life hell',
                      ),
                      SendMessage(
                        message: 'Yes man thats all of us',
                      ),
                      ReceiveMessage(
                        reply: 'I hope everything gets back to normal',
                      ),
                      SendMessage(
                        message: 'YES',
                      ),
                      ReceiveMessage(
                        reply: 'Then we can go for the GOA trip xD',
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
                        reply: 'LOLLLLL',
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width - 56,
                          child: Card(
                              margin:
                                  EdgeInsets.only(left: 3, right: 3, bottom: 7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Type a message',
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.attach_file),
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (builder) =>
                                                    bottomsheet());
                                          },
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.camera_alt),
                                        ),
                                      ],
                                    ),
                                    prefixIcon: IconButton(
                                      icon: Icon(Icons.emoji_emotions),
                                      onPressed: () {},
                                    ),
                                    contentPadding: EdgeInsets.all(4)),
                              ))),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 7, right: 1.9, left: 1.9),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF128C7E),
                          radius: 24,
                          child: IconButton(
                            icon: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget bottomsheet() {
  return Container(
    height: 277,
    width: double.infinity,
    child: Card(
      margin: EdgeInsets.all(17),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconforcard(Icons.insert_drive_file, Colors.indigo, "Document"),
                iconforcard(Icons.camera_alt, Colors.pink, "Camera"),
                iconforcard(Icons.insert_photo, Colors.purple, "Gallery"),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconforcard(Icons.headset, Colors.orange, "Audio"),
                iconforcard(Icons.location_pin, Colors.teal, "Location"),
                iconforcard(Icons.person, Colors.blue, "Contact")
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget iconforcard(IconData icon, Color color, String text) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 29,
          child: Icon(
            icon,
            size: 28,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(text),
      ],
    ),
  );
}
