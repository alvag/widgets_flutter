import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.only(top: 50),
            child: Column(
                children: <Widget>[
                    Icon(Icons.contacts, size: 160, color: Colors.green,),
                    Text('Contacts')
                ],
            ),
        );
    }
}
