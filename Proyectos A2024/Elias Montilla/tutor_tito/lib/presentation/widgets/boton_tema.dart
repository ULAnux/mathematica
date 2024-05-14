import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';

class BotonTema extends StatelessWidget {
  const BotonTema({
    super.key,
    required this.size,
    required this.goTo,
    required this.color,
    required this.titulo,
    required this.icono, 
    required this.porcentaje,
  });

  final Size size;
  final Widget goTo;
  final Color color;
  final String titulo;
  final Widget icono;
  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
                  padding:const EdgeInsets.all(18.0),
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
                        ..setEntry(3, 2, 0.001) //perspective
                        ..rotateY(pi), //rotating in the Y direction
                      alignment: FractionalOffset.center,
                      child: icono))
            ], //  signal_cellular_alt_rounded stream_rounded shape_line_rounded
          )),
    );
  }
}
