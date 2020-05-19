import 'package:flutter/material.dart';
class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardComponets()
        ],
      ),
    );
  }

  _cardComponets(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.image_aspect_ratio, color: Colors.blue),
            title: Text('Card demo'),
            subtitle: Text('Aqui nomas programando bin noche por que en el dia no hay internet man, apoco no te da pena :( XD'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text('Cancelar'), onPressed: (){},),
              FlatButton(child: Text('Cancelar'), onPressed: (){},)
            ],
          )
        ],
      )
    );
  }

}