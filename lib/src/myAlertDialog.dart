import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String msg, String titulo, String botonOK,
    String botonCancel) {
  //Creando los botones Cancelar y Ok
  Widget btnCancelar = FlatButton(child: Text(botonCancel), onPressed: () {});
  Widget btnOK = FlatButton(
    child: Text(botonOK),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  //Creando el Alert Dialog con los Botones
  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(msg),
    actions: [
      btnCancelar,
      btnOK,
    ],
  );
  //Mostrar Alert Dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
