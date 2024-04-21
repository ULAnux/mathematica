import 'package:flutter/material.dart';
import 'package:tutor_tito/presentation/screens/combinacion_screen.dart';
import 'package:tutor_tito/presentation/screens/premutaion_screen.dart';
import 'package:tutor_tito/presentation/screens/variacion_screen.dart';
import 'package:tutor_tito/presentation/widgets/boton_tema.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key, 
  required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
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
            size: size,
            porcentaje: 0.25,
            color: Colors.blue,
            goTo: const PemutacionScreen(),
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
                size: size,
                porcentaje: 0.5,
                color: Colors.orange,
                goTo: const CombinacionScreen(),
                titulo: 'COMBINACIONES',
                icono: const Icon(
                  Icons.stream_rounded,
                  size: 40,
                  color: Colors.white,
                )),
            BotonTema(
                size: size,
                porcentaje: 0.75,
                color: Colors.purple,
                goTo: const VariacionScreen(),
                titulo: 'VARIACIONES',
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
          padding: const EdgeInsets.only(left: 10.0, right: 40),
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
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
