import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final heroes = ['Sperder Man','Super Man','Triton','Chico Percebe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemCorta()
      ),
    );
  }

  // List<Widget> _createItems() {

  //   List<Widget> lista = new List<Widget>();

  //   for (String heroe in heroes) {
      
  //     final tempWidget = ListTile(
  //       title: Text(heroe),
  //     );

  //     lista..add(tempWidget)
  //          ..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemCorta() {

    return heroes.map((heroe) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(heroe + ' !'),
            subtitle: Text('Heroe'),
            leading: Icon(Icons.book),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

  }
}