import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pages/battery.dart';
import 'package:introduccion_flutter/pages/settings.dart';
import 'package:introduccion_flutter/widgets/listview.dart';

void main() {
    runApp(MaterialApp(
//        home: MyTabs(),
//    home: MyAlertDialog(),
//    home: MyStepper(),
//    home: MyNavigationDrawer(),
//    home: FirstPage(),
//    home: NavigatorTabs(),
//        home: MySnackBar(),
        home: MyListView(),
        routes: <String, WidgetBuilder>{
            Settings.routeName: (BuildContext context) => Settings(),
            Battery.routeName: (BuildContext context) => Battery()
        }
    ));
}
