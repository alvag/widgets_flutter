import 'package:flutter/material.dart';

class Video extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.only(top: 50),
            child: Column(
                children: <Widget>[
                    Icon(Icons.ondemand_video, size: 160, color: Colors.red,),
                    Text('Video')
                ],
            ),
        );
    }
}
