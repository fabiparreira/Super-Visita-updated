// CLASSE SUPERVISOR
class Supervisor {
  int _idSuper;
  String _nomeSuper;
  String _emailSuper;
  String _senhaSuper;

  Supervisor(
    this._idSuper,
    this._nomeSuper,
    this._emailSuper,
    this._senhaSuper,
  );

  Supervisor.map(dynamic obj) {
    this._idSuper = obj['idSuper'];
    this._nomeSuper = obj['nomeSuper'];
    this._emailSuper = obj['emailSuper'];
    this._senhaSuper = obj['senhaSuper'];
  }

  int get idSuper => _idSuper;
  String get nomeSuper => _nomeSuper;
  String get emailSuper => _emailSuper;
  String get senhaSuper => _senhaSuper;

  Map<String, dynamic> toMap() {
    var map = new Map();
    map["nomeSuper"] = _nomeSuper;
    map["emailSuper"] = _emailSuper;
    map["senhaSuper"] = _senhaSuper;
    return map;
  }
}
