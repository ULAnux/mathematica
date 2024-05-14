import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutor_tito/infrastructure/models/palabra_evaluada.dart';
import 'package:tutor_tito/theme/light_theme.dart';

final temaActual = StateProvider<ThemeData>((ref) {
  return LightTheme.temaClaro;
});

final indexPantalla = StateProvider<int>((ref) => 0);

final pageController = StateProvider<PageController>((ref) {
  return PageController(initialPage: ref.watch(indexPantalla));
});

final actividaActual = StateProvider<List<String>>((ref) => [
      'de los',
      'con las',
      'permutaciones',
      'sí',
      'importa',
      'el orden',

    ]);
final actividaSelecionar = StateProvider<List<String>>((ref) => []);

final actividadResultados = StateProvider<List<PalabraEvaluada>>((ref) => []);

final permutacionExpanded = StateProvider<int>((ref) => -1);

final nivel1 = StateProvider<String>((ref) => '');

final nivel2 = StateProvider<String>((ref) => '');

final sitengo = StateProvider<String>((ref) => '3');

final serepiten = StateProvider<String>((ref) => '1');

final terminal = StateProvider<String>((ref) => '');

final premutacionDesbloqueo = StateProvider<int>((ref) => 1);

final variacionesDesbloqueo = StateProvider<int>((ref) => 1);

final combinacionesDesbloqueo = StateProvider<int>((ref) => 1);

final actividadPuntaje = StateProvider<double>((ref) => 0);

final actividadDosFinal = StateProvider<String>((ref) => '');

final actividadDosFinalCom = StateProvider<String>((ref) => '');

final actividaddosResultados = StateProvider<String>((ref) => '');

final controllerExpande = StateProvider<List<ExpansionTileController>>((ref) => []); 

final continuarActividad1 = StateProvider<String>((ref) => '');

final controllerNomal= StateProvider<ExpansionTileController>((ref) => ExpansionTileController()); 

final resultadosActividaDosPerm = StateProvider<String>((ref) => '');

final resultadosActividaDosCom = StateProvider<String>((ref) => '');

final resultadosActividaDosVaria = StateProvider<String>((ref) => '');

final hoyResutosCombin = StateProvider<List<int>>((ref) => []);

final hoyResutosCombinacPuntaje = StateProvider<List<String>>((ref) => []);

final hoyResutosPermuta = StateProvider<List<int>>((ref) => []);

final hoyResutosCombi = StateProvider<List<int>>((ref) => []);

final hoyResutosVaria = StateProvider<List<int>>((ref) => []);

final hoyResutosPermutaPuntaje = StateProvider<List<String>>((ref) => []);

final hoyResutosCombiPuntaje = StateProvider<List<String>>((ref) => []);

final hoyResutosVariaPuntaje  = StateProvider<List<String>>((ref) => []);

final totalPuntaje= StateProvider<double>((ref) => 0);

final cambiarTema= StateProvider<bool>((ref) => true);