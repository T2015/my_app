import 'package:flutter/material.dart';
import 'package:my_app/models/conversation.dart';
import 'package:my_app/models/user.dart';
import 'package:my_app/models/message.dart';
import 'package:my_app/utils/routers.dart';

class MessagePage extends StatelessWidget{

  List<Conversation> conversations = [
    Conversation(
      users: [
        User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
        User(id: '12345', name: 'Tom',male: true,phone: '15999999999'),
      ],
      lastMessage: Message(msg: 'Hi Tom',
        user: User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
        sendTime: DateTime(2018,11,11,11,11)),
    icon: 'assets/avatar.png'
    ),
    Conversation(
        users: [
          User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
          User(id: '12346', name: 'HanMeiMei',male: true,phone: '16999999999'),
        ],
        lastMessage: Message(msg: 'Hi Junky',
            user: User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
            sendTime: DateTime(2018,11,11,11,11)),
        icon: 'assets/avatar.png'
    ),
    Conversation(
        users: [
          User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
          User(id: '12347', name: 'LiLei',male: true,phone: '17999999999'),
        ],
        lastMessage: Message(msg: 'Hi Junky',
            user: User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
            sendTime: DateTime(2018,11,11,11,11)),
        icon: 'assets/avatar.png'
    ),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView(children:
      this.conversations.map((Conversation con)=>_ListRow(con: con,)).toList(),
    );
    return Container(color: Colors.brown,);
  }

}






class _ListRow extends StatefulWidget{
  
  
  

  Conversation con = Conversation(
    users: [
      User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
      User(id: '12345', name: 'Tom',male: true,phone: '15999999999'),
    ],
    lastMessage: Message(msg: 'Hi Tom',
        user: User(id: '89757', name: 'Junky',male: true,phone: '15888888888'),
        sendTime: DateTime(2018,11,11,11,11)),
    icon: 'assets/avatar.png'
  );

  _ListRow({this.con});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListRowState();
  }



}

class _ListRowState extends State<_ListRow>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return GestureDetector(
      
      onTap: (){
        Navigator.pushNamed(context, routerName_message_detail);
      },
      
      child: Padding(padding: EdgeInsets.all(10),
        child: Row(children: <Widget>[
          CircleAvatar(radius: 20,backgroundImage: AssetImage(widget.con.icon),),
          Padding(padding: EdgeInsets.only(left: 10,),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.con.users[1].name,style: TextStyle(fontSize: 17,color: Colors.black87),),
                Row(

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget.con.lastMessage.msg,style: TextStyle(fontSize: 14,color: Colors.blueGrey),),
                    Text(widget.con.lastMessage.sendTime.toString(),
                      style: TextStyle(fontSize: 14,color: Colors.grey,),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),

              ],),

          ),
        ],
        ),
      ),
    );
  }

  

}




