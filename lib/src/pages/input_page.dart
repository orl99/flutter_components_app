import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs text'),
      ),
      body: ListView(
        children: <Widget>[
        _inputWidget(),
        Divider(),
        _createUser()
       ],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      )
    );
  }

  Widget _inputWidget() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras: ${_name.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'solo es el nombre',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (value) {
        setState(() {
          this._name = value;
          print(value);
        });
      },
    );
  }

  Widget _createUser() {
    return ListTile(
      title: Text('Nuevo usuario: $_name'),
    );
  }
}