import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';

class BotonTema extends ConsumerWidget {
  const BotonTema( {
    super.key,
    required this.puntajes,
    required this.size,
    required this.goTo,
    required this.color,
    required this.titulo,
    required this.icono,
    required this.desbloquePemutacion,
    required this.porcentaje, required this.desbloqueadaVariacion, required this.desbloqueadaCombinacion,
  });

  final Size size;
  final Widget goTo;
  final Color color;
  final String titulo;
  final Widget icono;
  final double porcentaje;
  final int desbloquePemutacion;
  final List<PuntajeDia> puntajes;
  final int desbloqueadaVariacion;
  final int desbloqueadaCombinacion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String hoy =  DateFormat('dd-MM-yyyy').format(DateTime.now());
    return GestureDetector(
      onTap: () {
        puntajes.forEach((element) {
          if(element.fecha == hoy){
            if(element.tema== 'Permutaciones'){
              ref.read(hoyResutosPermuta.notifier).update((state) => [...state, element.ejercicio-1 ]);
              ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, element.puntaje]);
            }
            if(element.tema == 'Variaciones'){
              ref.read(hoyResutosVaria.notifier).update((state) => [...state, element.ejercicio-1 ]);
              ref.read(hoyResutosVariaPuntaje.notifier).update((state) => [...state, element.puntaje]);
            }
            if(element.tema == 'Combinaciones'){
                ref.read(hoyResutosCombin.notifier).update((state) => [...state, element.ejercicio-1 ]);
              ref.read(hoyResutosCombinacPuntaje.notifier).update((state) => [...state, element.puntaje]);
            }
          }
         });
         if( ref.watch(premutacionDesbloqueo) == 1 ){
            ref.read(premutacionDesbloqueo.notifier).state = desbloquePemutacion+1;
         }
         if( ref.watch(variacionesDesbloqueo) == 1 ){
            ref.read(variacionesDesbloqueo.notifier).state = desbloqueadaVariacion+1;
         }
         if( ref.watch(combinacionesDesbloqueo) == 1 ){
            ref.read(combinacionesDesbloqueo.notifier).state = desbloqueadaCombinacion+1;
         }

       
        
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => goTo,
            ));
      },
      child: Container(
          height: size.height * 0.2,
          width: size.height * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  color,
                  Color.fromARGB(
                      255,
                      color.red + 20 > 255 ? 255 : color.red + 20,
                      color.green + 20 > 255 ? 255 : color.green + 20,
                      color.blue + 20 > 255 ? 255 : color.blue + 20),
                ],
                stops: const [
                  0.1,
                  0.9,
                ]),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircularProgressIndicator(
                    strokeAlign: 4,
                    value: porcentaje,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircularText(
                  children: [
                    TextItem(
                      text: Text(
                        titulo,
                        style: const TextStyle(
                          fontSize: 34,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      space: 16,
                      startAngle: -90,
                      startAngleAlignment: StartAngleAlignment.center,
                      direction: CircularTextDirection.clockwise,
                    ),
                  ],
                  radius: 125,
                  position: CircularTextPosition.inside,
                ),
              ),
              Center(
                  child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(pi),
                      alignment: FractionalOffset.center,
                      child: icono))
            ],
          )),
    );
  }
}
