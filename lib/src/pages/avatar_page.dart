import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Avatars'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://vignette.wikia.nocookie.net/naruto/images/d/dc/Modo_Sabio_de_Naruto%2C_impartido_por_los_sapos.png/revision/latest/scale-to-width-down/340?cb=20150104204832&path-prefix=es'),
              radius: 25.0,
            )
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown
            )
          )
        ],
      ),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/original.gif'),
        fadeInDuration: Duration(milliseconds: 200),
        image: NetworkImage('https://vignette.wikia.nocookie.net/akatsukiafterlife/images/7/7b/Naruto_Modo_Sabio_HD.png/revision/latest?cb=20141206150948&path-prefix=es',
        ))
      ),
    );
  }
}