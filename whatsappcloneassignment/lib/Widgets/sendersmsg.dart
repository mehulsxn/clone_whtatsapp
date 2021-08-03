import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {

  final String message;
  final String Time;
  SendMessage({required this.Time,required this.message});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 44,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
          color: Color(0xffdcf8c6),
          child: Stack(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 8.0,right: 59,bottom: 20,top: 6),
                 child: Text(message,style: TextStyle(fontSize: 15),
                 ),
               ),
               Positioned(
                 bottom: 4,
                 right: 10,
                 child: Row(
                   children: [
                     Text(Time,style: TextStyle(fontSize: 12,color: Colors.grey),),
                     SizedBox(
                       width: 5,
                     ),
                     Icon(Icons.done_all,size: 19,),
                   ],
                 ),
               ),
             ],
          ),
        ),
      ),
    );
  }
}
