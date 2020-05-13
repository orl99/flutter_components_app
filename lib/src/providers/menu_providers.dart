
import 'package:flutter/services.dart' show rootBundle;
// Libraries
import 'dart:convert';
class _MenuProvirder {
  List<dynamic> opciones = [];

  _MenuProvirder();

  Future<List<dynamic>> getData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode( response );
    opciones = dataMap['rutas'];
      
    return opciones;
  }
}
final menuProvirder = new _MenuProvirder();