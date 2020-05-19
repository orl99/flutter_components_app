import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar( title: Text('Alert Page'), ),
        body: Center(
          child: RaisedButton(
            onPressed: () => _shoeAlert(context),
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Abrir alerta')
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
        ),
      );
    }

    void _shoeAlert(BuildContext context) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('fiuneriupfniu4giuptrfvouptopuet4ngout4rgn4oeu[ng'),
                FlutterLogo(size: 100.0,),
              ]
            ),
            actions: <Widget>[
              FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
              FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Ok'))
            ],
          );
        }
      );
    }
}