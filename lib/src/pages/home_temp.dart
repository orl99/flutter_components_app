import 'package:flutter/material.dart';

class HomeTempPaage extends StatelessWidget {
  // const HomeTempPaage({Key key}) : super(key: key);
  final listOptions = ['One', 'Two', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Components'),
      ),
      body: ListView(
        children: <Widget>[
          ..._createWidgetList(),
          Divider(),
          Image(
            image: NetworkImage('https://assetsnffrgf-a.akamaihd.net/assets/m/501100004/univ/art/501100004_univ_lss_lg.jpg'),
          )
        ],
      ),
    );
  }

  // Methods

  List<Widget> _createWidgetList() {
    List<Widget> listas = new List<Widget>();

    for (var opts in this.listOptions) {
      final tempWidget = ListTile(title: Text(opts));
      listas..add(tempWidget)
            ..add(Divider());
    }

    return listas;
  }
}