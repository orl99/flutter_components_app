import 'package:components_app/src/providers/menu_providers.dart';
import 'package:components_app/src/util/icons_string_uitil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvirder.getData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        print(snapshot.data);
        return ListView(
          children: _listaItems( snapshot.data, context ),
        );
      },
    );

  }

  List<Widget> _listaItems( List<dynamic> opts, BuildContext buildContext) {
    final List<Widget> opciones = [];
    print(opts);

    opts.forEach((opt) {
      print(opt['texto']);
      final tempWidget = ListTile(
        leading: getIcon(opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon( Icons.arrow_forward_ios ),
        onTap: (){},
      );
      opciones..add(tempWidget)
              ..add(Divider());
    });
    print('ops');
    print(opciones);
    return opciones;
  }
}





