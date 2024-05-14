import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';
import 'package:tutor_tito/infrastructure/models/actividad_permutaciones.dart';
import 'package:tutor_tito/infrastructure/models/notas_completas.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';
import 'package:tutor_tito/presentation/screens/pagina_configuracion.dart';
import 'package:tutor_tito/presentation/screens/pagina_historial.dart';
import 'package:tutor_tito/presentation/screens/pagina_principal.dart';
import 'package:tutor_tito/presentation/widgets/bottom_navigation.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen( 
      {super.key,required this.puntajes, required this.desbloqueadaPermutaciones, required this.desbloqueadaVariacion, required this.desbloqueadaCombinacion,required this.variaciones,required this.combinacion, required this.data, required this.permutaciones});
  final List<NotasCompletas> data;
  final List<Actividad> permutaciones;
  final List<Actividad> variaciones; 
  final List<Actividad> combinacion;
  final int desbloqueadaPermutaciones;
  final int desbloqueadaVariacion;
  final int desbloqueadaCombinacion;  
  final List<PuntajeDia> puntajes;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final int indexPage = ref.watch(indexPantalla);
    final PageController controllerPage = ref.watch(pageController);
    final puntajeTotal= ref.watch(totalPuntaje);
    double puntaje = 0;
    String hoy =  DateFormat('dd-MM-yyyy').format(DateTime.now());
    puntajes.forEach((element) {
        if(element.fecha == hoy){
            puntaje+= double.parse(element.puntaje);
        }
    },);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).secondaryHeaderColor),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 2.0, bottom: 2, left: 8, right: 8),
              child: Text(
                'Puntaje de hoy: ${puntajeTotal == 0 ? puntaje.ceil() : puntajeTotal.ceil() }',
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            )),
      ),
      body: PageView(
        controller: controllerPage,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          PaginaPrincipal(puntajes:puntajes,size: size, data: data,
          permutaciones: permutaciones,
          variaciones:variaciones,
          combinacion:combinacion,
          desbloqueadaVariacion:desbloqueadaVariacion,
          desbloqueadaCombinacion:desbloqueadaCombinacion,   
          desbloqueadaPermutaciones:desbloqueadaPermutaciones),
          HistoriaoScreen(),
          PaginaConfiguracion()
        ],
      ),
      bottomNavigationBar: BottomNavigator(
        onItemTapped: (posicion) {
          ref.read(indexPantalla.notifier).state = posicion;
          controllerPage.jumpToPage(posicion);
        },
        selectedIndex: indexPage,
      ),
    );
  }
}
