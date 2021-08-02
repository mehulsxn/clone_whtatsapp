import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                child: SvgPicture.asset(
                  'assets/groups.svg',
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
                radius: 29,
                backgroundColor: Colors.blueGrey,
              ),
              trailing: Text('18:04'),
              title: Text(
                'Mehul Saxena',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Hey Mehul! Your Order is ready',
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
