class PuntajeDia {
  String fecha = '';
  String puntaje = '';
  int codigo = 0;
  int ejercicio = 0;
  String tema = '';

  PuntajeDia({
    this.fecha = '',
    this.puntaje = '',
    this.codigo = 0,
    this.ejercicio = 0,
    this.tema = '',
  });

  Map<String, dynamic> toJson() => {
    "fecha": fecha,
    "puntaje": puntaje,
    "ejercicio": ejercicio,
    "tema": tema,
  };

  factory PuntajeDia.fromJson(Map<String, dynamic> json) => PuntajeDia(
    codigo: json["codigo"],
    fecha: json["fecha"],
    puntaje: json["puntaje"],
    ejercicio: json["ejercicio"],
    tema: json["tema"],
  );

  @override
  String toString() {
    return '$codigo $fecha $puntaje $ejercicio $tema';
  }
}