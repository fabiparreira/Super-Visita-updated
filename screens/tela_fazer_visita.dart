import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:super_visita/screens/widget_logotipo.dart';

// WIDGET (TELA) PARA COLETAR DADOS NAS VISITAS
class TelaFazerVisita extends StatefulWidget {
  TelaFazerVisita(
      {Key key,
      this.title,
      this.idVisita,
      this.portifolio,
      this.consolidado,
      this.diarioClasse,
      this.ataConselhoClasse})
      : super(key: key);

  final String title;
  final int idVisita;
  final bool portifolio;
  final bool consolidado;
  final bool diarioClasse;
  final bool ataConselhoClasse;

  @override
  _TelaFazerVisitaState createState() => _TelaFazerVisitaState();
}

class _TelaFazerVisitaState extends State<TelaFazerVisita> {

  bool _portifolio = false;

  void _onChanged(bool value) {
    setState(() {
      _portifolio = value;
    });
  }

  bool _consolidado = false;

  void _onChanged2(bool value2) {
    setState(() {
      _consolidado = value2;
    });
  }

  bool _diarioClasse = false;

  void _onChanged3(bool value3) {
    setState(() {
      _diarioClasse = value3;
    });
  }

  bool _ataConselhoClasse = false;

  void _onChanged4(bool value4) {
    setState(() {
      _ataConselhoClasse = value4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Coleta de Dados - Visita Escolar"),
        backgroundColor: Color(0xFF0D47A1),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[

            LogotipoWidget(),

            SwitchListTile(value: _portifolio,
                title: Text("Portifólio"),
                subtitle: Text(
                    "Individual para cada aluno, bimestral e"
                    " organizado em ordem alfabética"),
                activeColor: Color(0xFF0D47A1),
                secondary: Icon(Icons.recent_actors),
                onChanged: (bool value) {_onChanged(value);}),

            SwitchListTile(value: _consolidado,
                title: Text("Consolidado"),
                subtitle: Text(
                    "Coletivo para cada turma, bimestral e"
                        " organizado por série/ano"),
                activeColor: Color(0xFF0D47A1),
                secondary: Icon(Icons.note),
                onChanged: (bool value2) {_onChanged2(value2);}),

            SwitchListTile(value: _diarioClasse,
                title: Text("Diário de Classe"),
                subtitle: Text(
                    "Individual de cada docente, "
                    "contém registro de chamada, "
                    "assinatura do docente, "
                    "conteúdo bimestral e quadro de notas"),
                activeColor: Color(0xFF0D47A1),
                secondary: Icon(Icons.folder_special),
                onChanged: (bool value3) {_onChanged3(value3);}),

            SwitchListTile(value: _ataConselhoClasse,
                title: Text("Ata do Conselho de Classe"),
                subtitle: Text(
                    "Coletivo de todos os docentes, "
                        "referente a todas salas de aula e "
                        "produzido bimestralmente"),
                activeColor: Color(0xFF0D47A1),
                secondary: Icon(Icons.playlist_add_check),
                onChanged: (bool value4) {_onChanged4(value4);}),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  minLines: 10,
                  maxLines: 15,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Observações',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color(0xFF0D47A1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color(0xFF0D47A1)),
                    ),
                  ),
                ),
              ),
            ),

            RaisedButton.icon(
              icon: Icon(Icons.cloud_upload),
              color: Color(0xFF0D47A1),
              onPressed: (){},
              label: Text("Enviar Dados"),
            ),
          ],
        ),
      ),
    );
  }

}
