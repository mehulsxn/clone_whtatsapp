import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SendImage extends StatelessWidget {

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

          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1.0,right: 1.0,bottom: 1,top: 1),
                child: Image.asset('assets/msg1.jpg',fit: BoxFit.cover,),
                ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      '20:12',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
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
