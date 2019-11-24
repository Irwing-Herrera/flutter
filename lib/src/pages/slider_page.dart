import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Slider Page'),
       ),
       body: Container(
         padding: EdgeInsets.only(top: 50.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             _checkBox(),
             _switch(),
             Expanded(child: _crearImagen())
           ],
         ),
       ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (!_bloquearCheck) ? (valor) {
        setState(() {
          _valorSlider = valor;
        });
      } : null,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (bool valor) {
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: (_bloquearCheck) ? Text('Desactivar Check') : Text('Activar Check'),
      value: _bloquearCheck,
      onChanged: (bool valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _switch() {
    return SwitchListTile(
      title: (_bloquearCheck) ? Text('Desactivar Check') : Text('Activar Check'),
      value: _bloquearCheck,
      onChanged: (bool valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }


  Widget _crearImagen() {
    return Image(
      width: _valorSlider,
      image: NetworkImage('https://i.redd.it/icmjiunvn7v11.png'),
      fit: BoxFit.contain,
    );
  }

  
}