import 'dart:convert';

List<NotasCompletas> notasCompletasFromJson(String str) => List<NotasCompletas>.from(json.decode(str).map((x) => NotasCompletas.fromJson(x)));

String notasCompletasToJson(List<NotasCompletas> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotasCompletas {
    String titulo;
    String contenido;

    NotasCompletas({
        required this.titulo,
        required this.contenido,
    });

    factory NotasCompletas.fromJson(Map<String, dynamic> json) => NotasCompletas(
        titulo: json["titulo"],
        contenido: json["contenido"],
    );

    Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "contenido": contenido,
    };
}
