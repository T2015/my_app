import 'package:flutter/material.dart';
import 'package:my_app/pages/message/message.dart';
import 'package:my_app/pages/contact/contact.dart';
import 'package:my_app/pages/discover/discover.dart';
import 'package:my_app/pages/mine/mine.dart';
import 'package:my_app/pages/main/mainPage.dart';
import 'package:my_app/pages/message/messageDetail.dart';




const routerName_main = '/';

const routerName_message = '/消息';
const routerName_message_detail = '/消息明细';

const routerName_contact = '/通讯录';
const routerName_discover = '/发现';
const routerName_mine = '/我的';



var routers = <String, WidgetBuilder>{

  routerName_main : (BuildContext context) => MainPage(),
  routerName_message : (BuildContext context) => MessagePage(),
  routerName_message_detail : (BuildContext context) => MessageDetail(),
  routerName_contact : (BuildContext context) => ContactPage(),
  routerName_discover : (BuildContext context) => DiscoverPage(),
  routerName_mine : (BuildContext context) => MinePage(),

};





