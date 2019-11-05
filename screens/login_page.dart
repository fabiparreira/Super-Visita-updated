// WIDGET (TELA) PARA LOGIN
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:super_visita/data/database_helper.dart';
import 'package:super_visita/models/supervisor.dart';
import 'package:super_visita/screens/login_presenter.dart';
import 'package:super_visita/screens/widget_logotipo.dart';

class LoginPage extends StatefulWidget {
  final String title = 'Coleta eficiente, análise inteligente.';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _emailSuper, _senhaSuper;

  LoginPagePresenter _presenter;

  _LoginPageState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_emailSuper, _senhaSuper);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    var loginBtn = new RaisedButton(
      color: Color(0xFF0D47A1),
      onPressed: _submit,
      child: new Text("Acessar"),
    );

    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new LogotipoWidget(),
        new Text(
          "Área de Login",
          textScaleFactor: 1.5,
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _emailSuper = val,
                  decoration: new InputDecoration(
                      labelText: "Email",
                      icon: new Icon(Icons.alternate_email)),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _senhaSuper = val,
                  decoration: new InputDecoration(
                      labelText: "Senha", icon: new Icon(Icons.lock_outline)),
                ),
              )
            ],
          ),
        ),
        loginBtn
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Coleta eficiente, análise inteligente."),
      ),
      key: scaffoldKey,
      body: new Container(
        color: Colors.white,
        child: new Container(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) async {
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(Supervisor supervisor) async {
    _showSnackBar(supervisor.toString());
    setState(() {
      _isLoading = false;
    });

    var db = new DatabaseHelper();
    await db.saveUser(supervisor);
    //Navigator.of(context).pushNamed("/home");
  }
}
