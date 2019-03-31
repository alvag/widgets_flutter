import 'package:flutter/material.dart';
import 'package:introduccion_flutter/pages/contact.dart';
import 'package:introduccion_flutter/pages/home.dart';
import 'package:introduccion_flutter/pages/video.dart';

class MyTabs extends StatefulWidget {
    @override
    _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
    TabController tabController;

    @override
    void initState() {
        super.initState();

        tabController = new TabController(length: 3, vsync: this);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Video Tabs'),
                backgroundColor: Colors.redAccent,
                bottom: TabBar(
                    controller: tabController,
                    tabs: <Widget>[
                        Tab(
                            icon: Icon(Icons.home),
                        ),
                        Tab(
                            icon: Icon(Icons.ondemand_video),
                        ),
                        Tab(
                            icon: Icon(Icons.contacts),
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
