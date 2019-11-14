// CLASSE ESCOLA
class Escola {
  final List<dynamic> idEscola;
  final String nomeEscola;
  final String nomeGestor;

  Escola({
    this.idEscola,
    this.nomeEscola,
    this.nomeGestor,
  });

  String get getEscola => nomeEscola;
  String get getDiretor => nomeGestor;
  List<dynamic> get getIDs => idEscola;

  Map<String, dynamic> toJson() {
    return {
      "ids": this.idEscola,
      "nomeEscola": this.nomeEscola,
      "nomeDiretor": this.nomeGestor,
    };
  }

  factory Escola.fromJson(Map<String, dynamic> parsedJson) {
    return Escola(
      idEscola: parsedJson['ids'],
      nomeEscola: parsedJson['nomeEscola'],
      nomeGestor: parsedJson['nomeDiretor'],
    );
  }
}
