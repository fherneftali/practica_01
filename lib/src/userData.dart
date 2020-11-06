import 'package:flutter/material.dart';
import 'package:practica_01/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  @override
  _DatosUsuariosState createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  var _name;
  var _phone;

  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var children2 = <Widget>[
      Image.asset('assets/images/images2.png'),
      SizedBox(height: 10.0),
      TextField(
          controller: nameCtrl,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: 'Ingresa un nombre',
          )),
      TextField(
          controller: phoneCtrl,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: 'Ingresa tu telefono')),
      SizedBox(height: 10),
      RaisedButton(
          color: Colors.amber,
          child: Text('Enviar'),
          onPressed: () {
            _name = nameCtrl.text;
            _phone = phoneCtrl.text;
            setState(() {
              showAlertDialog(context, 'El nombre $_name y telefono $_phone',
                  'My App', 'Ok', 'Cancel');
            });
          })
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children2,
      ),
    );
  }
}
