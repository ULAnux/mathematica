import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:tutor_tito/domain/datasources.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';
import 'package:tutor_tito/infrastructure/models/actividad_permutaciones.dart';
import 'package:tutor_tito/infrastructure/models/notas_completas.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';
import 'package:tutor_tito/presentation/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if(!Platform.isAndroid){

  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
      size: Size(800, 750),
      title: 'Tutor Tito - BTM Studio by Elias Montilla',
      windowButtonVisibility: true,
      minimumSize: Size(400, 750),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.normal,
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  final String response = await rootBundle.loadString('assets/notas_completas.json');
  final List<NotasCompletas> data = notasCompletasFromJson(response);

  final String permutaciones = await rootBundle.loadString('assets/actividad_permutaciones.json');
  final List<Actividad> actividadPermutaciones = actividadFromJson(permutaciones);

  final String variaciones = await rootBundle.loadString('assets/actividad_variacion.json');
  final List<Actividad> actividadVariaciones = actividadFromJson(variaciones);

  final String combinacion = await rootBundle.loadString('assets/actividad_combinacion.json');
  final List<Actividad> actividadCombinacion = actividadFromJson(combinacion);

  if (!await DBProvider.db.codigoPermutacionExiste(1)) {
    DBProvider.db.insertPermutacion({'codigo': 1, 'desbloquedo': 0});
  }
  if (!await DBProvider.db.codigoPermutacionExiste(2)) {
    DBProvider.db.insertPermutacion({'codigo': 2, 'desbloquedo': 0});
  }
  if (!await DBProvider.db.codigoPermutacionExiste(3)) {
    DBProvider.db.insertPermutacion({'codigo': 3, 'desbloquedo': 0});
  }
  Map<String, dynamic> permutacion = await DBProvider.db.getPermutacion(1);
  Map<String, dynamic> variacion = await DBProvider.db.getPermutacion(2);
  Map<String, dynamic> combinacio = await DBProvider.db.getPermutacion(3);
  List<PuntajeDia> puntajes = await DBProvider.db.getTodosPuntajes();

  int desbloqueadaPermutaciones = permutacion['desbloquedo'];
  int desbloqueadaVariacion = variacion['desbloquedo'];
  int desbloqueadaCombinacion = combinacio['desbloquedo'];
  runApp(ProviderScope(
      child: MyApp(
          data: data,
          puntajes:puntajes,
          permutaciones: actividadPermutaciones,
          combinacion: actividadCombinacion,
          variaciones: actividadVariaciones,
          desbloqueadaVariacion:desbloqueadaVariacion,
          desbloqueadaCombinacion:desbloqueadaCombinacion,
          desbloqueadaPermutaciones: desbloqueadaPermutaciones)));
}

class MyApp extends ConsumerWidget {
  const MyApp( {super.key, required this.desbloqueadaPermutaciones, required this.desbloqueadaVariacion, required this.desbloqueadaCombinacion, required this.variaciones, required this.combinacion, required this.puntajes, required this.data, required this.permutaciones});
  final List<Actividad> permutaciones;
  final List<Actividad> variaciones; 
  final List<Actividad> combinacion;
  final List<NotasCompletas> data;
  final int desbloqueadaPermutaciones;
  final int desbloqueadaVariacion;
  final int desbloqueadaCombinacion;
  final List<PuntajeDia> puntajes;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tutor Tito',
        theme: ref.watch(temaActual),
        home: HomeScreen(puntajes:puntajes, data: data, 
        permutaciones: permutaciones,
        variaciones:variaciones,
        combinacion:combinacion,
        desbloqueadaVariacion:desbloqueadaVariacion,
        desbloqueadaCombinacion:desbloqueadaCombinacion,
        desbloqueadaPermutaciones:desbloqueadaPermutaciones));
  }
}
