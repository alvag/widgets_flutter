import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pages/battery.dart';
import 'package:introduccion_flutter/pages/settings.dart';
import 'package:introduccion_flutter/widgets/navigation-drawer.dart';

void main() {
    runApp(MaterialApp(
//        home: MyTabs(),
//    home: MyAlertDialog(),
//    home: MyStepper(),
    home: MyNavigationDrawer(),
        routes: <String, WidgetBuilder> {
            Settings.routeName: (BuildContext context) => Settings(),
            Battery.routeName: (BuildContext context) => Battery()
        }
    ));
}
