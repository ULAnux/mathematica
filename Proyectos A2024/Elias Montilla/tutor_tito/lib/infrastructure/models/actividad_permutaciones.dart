import 'dart:convert';

List<Actividad> actividadFromJson(String str) =>
    List<Actividad>.from(
        json.decode(str).map((x) => Actividad.fromJson(x)));


class Actividad {
  String actividad;
  int indice = 0;
  List<String>? nivel1A;
  List<String>? nivel2A;
  List<String>? nivel3A;
  List<String>? nivel2B;
  List<String>? nivel3B;
  List<String>? nivel2C;
  List<String>? nivel3C;
  List<String>? palabras;
  Map<String, String>? resultados;
  String? fraseCompleta;
  List<String>? frasesCorrectras;

  Actividad({
    required this.actividad,
    this.nivel1A,
    this.nivel2A,
    this.nivel3A,
    this.nivel2B,
    this.nivel3B,
    this.nivel2C,
    this.nivel3C,
    this.resultados,
    this.palabras,
    this.fraseCompleta,
    this.frasesCorrectras,
  });

  factory Actividad.fromJson(Map<String, dynamic> json) =>
      Actividad(
        actividad: json["actividad"],
        nivel1A: json["nivel1A"] == null
            ? []
            : List<String>.from(json["nivel1A"]!.map((x) => x)),
        nivel2A: json["nivel2A"] == null
            ? []
            : List<String>.from(json["nivel2A"]!.map((x) => x)),
        nivel3A: json["nivel3A"] == null
            ? []
            : List<String>.from(json["nivel3A"]!.map((x) => x)),
        nivel2B: json["nivel2B"] == null
            ? []
            : List<String>.from(json["nivel2B"]!.map((x) => x)),
        nivel3B: json["nivel3B"] == null
            ? []
            : List<String>.from(json["nivel3B"]!.map((x) => x)),
        nivel2C: json["nivel2C"] == null
            ? []
            : List<String>.from(json["nivel2C"]!.map((x) => x)),
        nivel3C: json["nivel3C"] == null
            ? []
            : List<String>.from(json["nivel3C"]!.map((x) => x)),
        palabras: json["palabras"] == null
            ? []
            : List<String>.from(json["palabras"]!.map((x) => x)),
        fraseCompleta: json["fraseCompleta"],
        frasesCorrectras: json["frasesCorrectras"] == null
            ? []
            : List<String>.from(json["frasesCorrectras"]!.map((x) => x)),
           resultados: json["resultados"] == null? null : Map.from(json["resultados"]).map((k, v) => MapEntry<String, String>(k, v)),
      );

 
}
