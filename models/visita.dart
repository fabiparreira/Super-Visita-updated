// CLASSE VISITA
class Visita {
  int _idVisita;
  bool _portifolio;
  bool _consolidado;
  bool _diarioClasse;
  bool _ataConselhoClasse;
  String _observacoes;

  Visita(
    this._idVisita,
    this._portifolio,
    this._consolidado,
    this._diarioClasse,
    this._ataConselhoClasse,
    this._observacoes,
  );

  Visita.map(dynamic obj) {
    this._idVisita = obj['idVisita'];
    this._portifolio = obj['portifolio'];
    this._consolidado = obj['consolidado'];
    this._diarioClasse = obj['diarioClasse'];
    this._ataConselhoClasse = obj ['ataConselhoClasse'];
    this._observacoes = obj ['observacoes'];
  }

  int get idVisita => _idVisita;
  bool get portifolio => _portifolio;
  bool get consolidado => _consolidado;
  bool get diarioClasse => _diarioClasse;
  bool get ataConselhoClasse => _ataConselhoClasse;
  String get observacoes => _observacoes;

  Map<String, dynamic> toMap() {
    var map = new Map();
    map["portifolio"] = _portifolio;
    map["consolidado"] = _consolidado;
    map["diarioClasse"] = _diarioClasse;
    map["ataConselhoClasse"] = _ataConselhoClasse;
    map["observacoes"] = _observacoes;
    return map;
  }
}
