import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pages/contact.dart';
import 'package:introduccion_flutter/pages/home.dart';
import 'package:introduccion_flutter/pages/video.dart';

class NavigatorTabs extends StatefulWidget {
    @override
    _NavigatorTabsState createState() => _NavigatorTabsState();
}

class _NavigatorTabsState extends State<NavigatorTabs>
    with SingleTickerProviderStateMixin {
    TabController tabController;

    @override
    void initState() {
        // TODO: implement initState
        super.initState();

        tabController = new TabController(length: 3, vsync: this);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Demo Bottom Navigation Bar'),
            ),
            bottomNavigationBar: Material(
                color: Colors.blueAccent,
                child: TabBar(controller: tabController,
                    tabs: <Widget>[
                        Tab(
                            icon: Icon(Icons.alarm),
                        ),
                        Tab(
                            icon: Icon(Icons.watch_later),
                        ),
                        Tab(
                            icon: Icon(Icons.airplanemode_active),
                        )
                    ],
                ),
            ),
            body: TabBarView(
                children: <Widget>[
                    Home(),
                    Video(),
                    Contact()
                ],
                controller: tabController,
            ),
        );
    }
}
