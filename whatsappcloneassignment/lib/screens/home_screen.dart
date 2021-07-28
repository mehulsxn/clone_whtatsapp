import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 4, vsync: this,initialIndex: 0);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Clone'),
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.search)),
          IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)),

        ],
        bottom: TabBar(
          controller:_tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),

    );
  }
}