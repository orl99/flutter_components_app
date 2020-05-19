import 'package:flutter/material.dart';
class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
          _cardComponets(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardComponets(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(25.0) ),
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

  Widget _cardType2() {
      final containerCard = Container(
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://images.alphacoders.com/103/thumb-1920-1039414.png'),
              placeholder: AssetImage('assets/original.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250.0,
              fit: BoxFit.cover
            ),
            Text('no tengo idea ajajjajaja')
          ],
        ),
      );

      return Container(
        child: ClipRRect(child: containerCard, borderRadius: BorderRadius.circular(30.0),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)
            )
          ]
        ),
      );
  }

}