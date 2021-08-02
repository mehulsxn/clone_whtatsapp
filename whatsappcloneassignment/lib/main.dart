import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54), accentColor: Color(0xFF128C7E)
      ),
      home: HomeScreen(),
    );
  }
}