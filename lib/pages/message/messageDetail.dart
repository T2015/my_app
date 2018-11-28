import 'package:flutter/material.dart';


class MessageDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text('消息明细'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
                   Navigator.pop(context);
            },
          ),

        ],
      ),
      body: Container(color: Colors.blueGrey,),
    );
  }


}