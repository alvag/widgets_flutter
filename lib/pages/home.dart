import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
            children: <Widget>[
                Icon(Icons.home, size: 160, color: Colors.blue,),
                Text('Home')
            ],
        ),
    );
  }
}
