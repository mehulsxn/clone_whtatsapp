import 'package:flutter/material.dart';

class ChatModel {

  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel({required this.icon, required this.name, required this.currentMessage, required this.isGroup, required this.time});
}


