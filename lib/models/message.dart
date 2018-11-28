import 'package:flutter/material.dart';

import 'package:my_app/models/user.dart';


class Message{

  String msg;

  User user;

  DateTime sendTime;

  Message({this.msg,this.user,this.sendTime});
}
