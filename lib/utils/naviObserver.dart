import 'package:flutter/material.dart';



class NaviObserver extends NavigatorObserver{

  @override
  void didPush(Route route, Route previousRoute) {
    // TODO: implement didPush
    super.didPush(route, previousRoute);

    print(route.settings);
    print(previousRoute);
  }


  @override
  void didPop(Route route, Route previousRoute) {
    // TODO: implement didPop
    super.didPop(route, previousRoute);

    print(route);
    //route.currentResult获取返回内容
    print(previousRoute);
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    // TODO: implement didRemove
    super.didRemove(route, previousRoute);

    print(route);
    print(previousRoute);
  }

}
