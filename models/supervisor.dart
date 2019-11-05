class Supervisor {
  // verificar os outros atributos dessa tabela
  String _emailSuper;
  String _senhaSuper;

  Supervisor(this._emailSuper, this._senhaSuper);

  Supervisor.map(dynamic obj) {
    this._emailSuper = obj['emailSuper'];
    this._senhaSuper = obj['senhaSuper'];
  }

  String get emailSuper => _emailSuper;
  String get senhaSuper => _senhaSuper;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["emailSuper"] = _emailSuper;
    map["senhaSuper"] = _senhaSuper;
    return map;
  }

}