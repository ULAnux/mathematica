import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutor_tito/theme/light_theme.dart';

final temaActual = StateProvider<ThemeData>((ref) {
  return LightTheme.temaClaro;
});

final indexPantalla = StateProvider<int>((ref) => 0);

final pageController = StateProvider<PageController>((ref) {
  return PageController(initialPage: ref.watch(indexPantalla) );
  ;
});
