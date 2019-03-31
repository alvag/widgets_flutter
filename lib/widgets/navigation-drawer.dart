import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatefulWidget {
  @override
  _MyNavigationDrawerState createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
    
    Drawer getDrawer(BuildContext context) {
        
        var header = DrawerHeader(
            child: Text('Ajustes'),
        );
        
        var info = AboutListTile(
            child: Text('Acerca de'),
            applicationIcon: Icon(Icons.favorite),
            icon: Icon(Icons.info),
            applicationVersion: 'v1.0.0',
            applicationName: 'Demo Drawer',
        );

        ListTile getItem(Icon icon, String description, String route) {
            return ListTile(
                leading: icon,
                title: Text(description),
                onTap: () {
                    setState(() {
                        Navigator.of(context).pushNamed(route);
                    });
                },
            );
        }
        
        ListView listView = new ListView(children: <Widget>[
            header,
            getItem(Icon(Icons.home), 'Inicio', '/'),
            getItem(Icon(Icons.settings), 'Configuración', '/configuracion'),
            getItem(Icon(Icons.battery_alert), 'Batería', '/bateria'),
            info
        ],);

        return Drawer(
            child: listView,
        );
        
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Demo Navigation Drawer'),
        ),
        drawer: getDrawer(context)
    );
  }
  
}
