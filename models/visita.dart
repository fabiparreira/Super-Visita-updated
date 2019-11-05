// CLASSE VISITA
class Visita {
  final int idVisita;
  final bool portifolio; // usar switch para booleanos
  final bool consolidado;
  final bool diarioClasse;
  final bool ataConselhoClasse;

  Visita(
    this.idVisita,
    this.portifolio,
    this.consolidado,
    this.diarioClasse,
    this.ataConselhoClasse,
  );

  Map<String, dynamic> toJson() {
    return {
      "ids": this.idVisita,
      "prontMatricula": this.portifolio,
      "fichaRemissiva": this.consolidado,
      "diarioClasse": this.diarioClasse,
    };
  }

  /*factory Visita.fromJson(Map<String, dynamic> parsedJson) {
    return Visita(
      idVisita parsedJson['ids'],
      prontMatricula: parsedJson['prontMatricula'],
      fichaRemissiva: parsedJson['fichaRemissiva'],
      historicoEscolar: parsedJson['historicoEscolar'],
      fichaMatriculaAEE: parsedJson['fichaMatriculaAEE'],
      diarioClasse: parsedJson['diarioClasse'],
    );
  }*/
}
