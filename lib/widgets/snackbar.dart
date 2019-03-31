import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Demo SnackBar'),
        ),
        body: Center(
            child: MyButton(),
        ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('Desplegar SnackBar'),
        onPressed: () {
            Scaffold.of(context).showSnackBar(
                SnackBar(
                    content: Text('Hola soy un Snackbar'),
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                        label: 'Click aquí', 
                        onPressed: () {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Hola nuevamente'))  
                            );
                        }
                    )
                )
            );
        },
    );
  }
}
