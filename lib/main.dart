import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pages/battery.dart';
import 'package:introduccion_flutter/pages/settings.dart';
import 'package:introduccion_flutter/widgets/infinite-list.dart';

void main() {
    runApp(MaterialApp(
//        home: MyTabs(),
//    home: MyAlertDialog(),
//    home: MyStepper(),
//    home: MyNavigationDrawer(),
//    home: FirstPage(),
//    home: NavigatorTabs(),
//        home: MySnackBar(),
//        home: MyListView(),
        home: RandomWords(),
        routes: <String, WidgetBuilder>{
            Settings.routeName: (BuildContext context) => Settings(),
            Battery.routeName: (BuildContext context) => Battery()
        }
    ));
}
