import 'package:flutter/material.dart';
import 'package:my_app/pages/message/message.dart';
import 'package:my_app/pages/contact/contact.dart';
import 'package:my_app/pages/discover/discover.dart';
import 'package:my_app/pages/mine/mine.dart';




class MainPage extends StatefulWidget{

  List<String> titles = ['消息','通讯录','发现','我的'];
  List<Widget> bodys = [MessagePage(),ContactPage(),DiscoverPage(),MinePage()];
  var selectIndex = 0;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPageState();
  }


}


class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(widget.titles[widget.selectIndex]),),
      body: widget.bodys[widget.selectIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        _buildItems('assets/message.png', '消息', 'assets/message_select.png'),
        _buildItems('assets/txl.png', '通讯录', 'assets/txl_select.png'),
        _buildItems('assets/discover.png', '发现', 'assets/discover_select.png'),
        _buildItems('assets/mine.png', '我的', 'assets/mine_select.png'),
      ],currentIndex: widget.selectIndex,
        onTap: (index){
          setState(() {
            widget.selectIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }



  BottomNavigationBarItem _buildItems(image,title,selectImage){

    return BottomNavigationBarItem(
        icon: Image.asset(image,width: 20,height: 20,),
        title: Text(title),
        activeIcon: Image.asset(selectImage,width: 20,height: 20,));
  }

}