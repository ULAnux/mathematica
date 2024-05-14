
import 'package:tutor_tito/infrastructure/models/palabra_evaluada.dart';
import 'dart:math';

String encontrarMasSimilar(String entrada, List<String> opciones) {
  int maxMatches = -1;
  String mostSimilar = "";

  for (String candidate in opciones) {
    int matches = comparadorPalabras(entrada, candidate);
    if (matches > maxMatches) {
      maxMatches = matches;
      mostSimilar = candidate;
    }
  }

  return mostSimilar;
}

int comparadorPalabras(String s1, String s2) {
  List<String> words1 = s1.split(' ');
  List<String> words2 = s2.split(' ');

  int count = 0;
  for (int i = 0; i < words1.length && i < words2.length; i++) {
    if (words1[i] == words2[i]) {
      count++;
    }
  }

  return count;
}

List<PalabraEvaluada> evaluarFrase(String fraseCorrecta, String fraseEvaluar) {
  List<String> posicionCorrecta = fraseCorrecta.split(' ');
  List<String> palabraEvaluar = fraseEvaluar.split(' ');

  List<PalabraEvaluada> resultado = [];

  for (String word in palabraEvaluar) {
    int palabraCorrecta = posicionCorrecta.indexOf(word);
    int posicionActual = palabraEvaluar.indexOf(word);

    if (palabraCorrecta == posicionActual) {
      resultado.add(PalabraEvaluada(palabra: palabraEvaluar[posicionActual], posicion: 1 ));
    } else if ((palabraCorrecta - posicionActual).abs() <= 2) {
      resultado.add(PalabraEvaluada(palabra: palabraEvaluar[posicionActual], posicion: 2 ));
    } else {
      resultado.add(PalabraEvaluada(palabra: palabraEvaluar[posicionActual], posicion: 3 ));
    }
  }

  return resultado;
}

  int factorial(int n) {
  if (n < 0) return 0;
  return n <= 1 ? 1 : n * factorial(n - 1);
}

num elevar(int numero, int al){
  return pow(numero, al);
}