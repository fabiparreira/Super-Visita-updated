import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// CLASSE DO COMPONENTE "EDITOR"
class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: controlador,
          style: TextStyle(
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            icon: Icon(icone),
            labelText: rotulo,
            hintText: dica,
          ),
        ),
      ],
    );
  }
}

