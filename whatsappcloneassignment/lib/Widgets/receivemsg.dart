import 'package:flutter/material.dart';

class ReceiveMessage extends StatelessWidget {
  final String reply;
  final String replyname;
  final String time;
  final Color color;
  ReceiveMessage({required this.time,required this.reply,required this.color,required this.replyname});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 44,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 4),

          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 59,bottom: 20,top: 6),
                child: Text(replyname ,style: TextStyle(fontSize: 15,color: color),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 59,bottom: 20,top: 30),
                child: Text(reply,style: TextStyle(fontSize: 15),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Text(time,style: TextStyle(fontSize: 12,color: Colors.grey),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
