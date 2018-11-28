import 'package:flutter/material.dart';
import 'package:my_app/models/message.dart';
import 'user.dart';

class Conversation{

  List<User> users;

  Message lastMessage;

  String icon;

  Conversation({this.users,this.lastMessage,this.icon});

}

