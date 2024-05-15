import 'package:flutter/material.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';
import 'package:tutor_tito/infrastructure/models/actividad_permutaciones.dart';
import 'package:tutor_tito/infrastructure/models/notas_completas.dart';
import 'package:tutor_tito/presentation/screens/combinacion_screen.dart';
import 'package:tutor_tito/presentation/screens/permutaciones.dart';
import 'package:tutor_tito/presentation/screens/variacion_screen.dart';
import 'package:tutor_tito/presentation/widgets/boton_tema.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key, 
  required this.size,
  required this.data,
  required this.permutaciones,
  required this.variaciones,
  required this.combinacion,
  required this.desbloqueadaPermutaciones, required this.puntajes, required this.desbloqueadaVariacion, required this.desbloqueadaCombinacion});
  final List<NotasCompletas>  data;
  final List<Actividad> permutaciones;
  final List<Actividad> variaciones;
  final List<Actividad> combinacion;
  final int desbloqueadaVariacion;
  final int desbloqueadaCombinacion;
  final Size size;
  final int desbloqueadaPermutaciones;
  final List<PuntajeDia> puntajes;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text(
            'Elige un tema para continuar',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          BotonTema(
            desbloquePemutacion: desbloqueadaPermutaciones,
            desbloqueadaVariacion: desbloqueadaVariacion,
            desbloqueadaCombinacion:desbloqueadaCombinacion,
              size: size,
              puntajes:puntajes,
              porcentaje: desbloqueadaPermutaciones/19,
              color: Colors.blue,
              goTo: Permutaciones( permutaciones: permutaciones, data: data[0], desbloqueadaPermutaciones:desbloqueadaPermutaciones ),
              titulo: 'PERMUTACIONES',
      
              icono: const Icon(
                Icons.signal_cellular_alt_rounded,
                size: 40,
                color: Colors.white,
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BotonTema(
                desbloquePemutacion: desbloqueadaPermutaciones,
                desbloqueadaVariacion:desbloqueadaVariacion,
                desbloqueadaCombinacion:desbloqueadaCombinacion,
                  size: size,
                  puntajes:puntajes,
                  porcentaje: desbloqueadaVariacion/12,
                  color: Colors.orange,
                  goTo:  CombinacionesScreen(
                    data: data[2],
                    desbloqueadaVariaciones: 1,
                    combinaciones: combinacion,
                  ),
                  titulo: 'COMBINACIONES',
      
                  icono: const Icon(
                    Icons.stream_rounded,
                    size: 40,
                    color: Colors.white,
                  )),
              BotonTema(
                desbloquePemutacion: desbloqueadaPermutaciones,
                desbloqueadaVariacion:desbloqueadaVariacion,
                desbloqueadaCombinacion:desbloqueadaCombinacion,
                  size: size,
                  porcentaje:desbloqueadaCombinacion/9,
                  color: Colors.purple,
                  goTo: VariacionesScreen(
                    data: data[1],
                    desbloqueadaVariaciones: 1,
                    variaciones: variaciones,
      
                  ),
                  titulo: 'VARIACIONES',
                  puntajes:puntajes,
                  icono: const Icon(
                    Icons.shape_line_rounded,
                    size: 40,
                    color: Colors.white,
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20),
            child: Row(
              children: [
                SizedBox(
                    width: size.height * 0.25,
                    child: Image.asset('assets/robot.png')),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: size.height * 0.25,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 245, 150, 143),
                    ),
                    child: Center(child: Text('Aprendamos juntos con ejercicios prácticos',style: TextStyle(color: Colors.white,fontSize: 20), textAlign: TextAlign.center,)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
