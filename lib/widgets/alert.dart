import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
    @override
    _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
    
    String inputText = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Demo Alert Dialog'),
            ),
            body: Container(
                child: Center(
                    child: Column(
                        children: <Widget>[
                            TextField(
                                decoration: InputDecoration(
                                    hintText: 'Ingrese el texto'
                                ),
                                onChanged: (String value) {setState(() {
                                  inputText = value;
                                });},
                            ),
                            RaisedButton(
                                child: Text('Ver Alerta'),
                                onPressed: () {
                                    showAlert(inputText);
                                },
                            )
                        ],

                    ),
                )
            ),
        );
    }

    void showAlert(String value) {
        AlertDialog dialog = AlertDialog(
            content: Text(value),
            actions: <Widget>[
                FlatButton(
                    onPressed: () {_onPressed(DialogOptions.Yes);},
                    child: Text('Aceptar')
                ),
                FlatButton(
                    onPressed: () {_onPressed(DialogOptions.No);},
                    child: Text('Cancelar'),
                )
            ],
        );
        
        showDialog(
            context: context, 
            builder: (BuildContext context) {
            return dialog;
        });
    }
    
    _onPressed(DialogOptions option) {
        print('Has presionado la opcion $option');
    }
}

enum DialogOptions {
    Yes, No
}
