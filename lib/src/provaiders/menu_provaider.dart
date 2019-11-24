import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvaider {
  
  List<dynamic> opciones = [];

  _MenuProvaider() {
    // _cargarData();
  }

  Future<List<dynamic>> cargarData() async {

    final resp = await rootBundle.loadString('data/menu-opts.json');
    
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    return opciones;
  }

}

final menuProvaider = new _MenuProvaider();