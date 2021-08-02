import 'package:flutter/material.dart';

class ReceiveMessage extends StatelessWidget {
  final String reply;
  ReceiveMessage({required this.reply});
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
                child: Text(reply,style: TextStyle(fontSize: 15),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Text('20:12',style: TextStyle(fontSize: 12,color: Colors.grey),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
