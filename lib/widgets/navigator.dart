import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Primera Pantalla'),
        ),
        body: Center(
            child: RaisedButton(
                child: Text('Mostrar segunda pantalla'),
                onPressed: () {
                    Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => SecondPage())
                    );
                }
            )
        ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: Text('Segunda Pantalla'),
          ),
          body: Center(
              child: RaisedButton(
                  child: Text('Ir a tras'),
                  onPressed: () {
                      Navigator.pop(context);
                  }
              )
          ),
      );
  }
  
}
