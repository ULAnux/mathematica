import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutor_tito/domain/datasources.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';
import 'package:tutor_tito/theme/dark_theme.dart';
import 'package:tutor_tito/theme/light_theme.dart';

class PaginaConfiguracion extends ConsumerWidget {
  const PaginaConfiguracion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final temaCambiar = ref.watch(cambiarTema);
    return Column(children: [
      MaterialButton(
        color: Colors.black,
        onPressed: (){
        showDialog(context: context, builder: (context) => Dialog(
          child: SizedBox(
            height: 200,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Esta aplicación fue realizada en su totalidad por Elias Montilla para la materia de Matemáticas Discretas de la carrera Ing. de Sistema en la Universidad de los Andes (ULA Mérida Venezuela). Profesor Jacinto Davila', textAlign: TextAlign.center,)],)),
              ),
          ),),);
      },
      child: Text('Sobre esta aplicación',style: TextStyle(color: Colors.white),),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tema Claro'),
          Switch(
            activeColor: Theme.of(context).primaryColor,
            value: temaCambiar, onChanged: (value){
              ref.read(cambiarTema.notifier).state = value;
              if(value){
                ref.read(temaActual.notifier).state=LightTheme.temaClaro;
              }else{
                ref.read(temaActual.notifier).state=DarkTheme.temaOscuro;
              }
          }),
        ],
      ),
       MaterialButton(
        color: Colors.black,
        onPressed: (){
        showDialog(context: context, builder: (context) => AlertDialog(
          actions: [MaterialButton(
            color: Colors.black,
            onPressed: (){
              DBProvider.db.deleteDB();
              ref.read(hoyResutosPermutaPuntaje.notifier).state = [];
              ref.read(premutacionDesbloqueo.notifier).state=1;
              ref.read(hoyResutosPermuta.notifier).state=[];
              Navigator.pop(context);
            },
          child: Text('Si',style: TextStyle(color: Colors.white),),),
          MaterialButton(
            onPressed: (){
              
              Navigator.pop(context);
            },
          child: Text('No',style: TextStyle(color: Colors.black),),),
          ],
          content: SizedBox(
            height: 300,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('¿Estas seguro de borrar los datos de tu progreso? eso incluye el historial de los puntajes guardados', textAlign: TextAlign.center,)],)),
              ),
          ),),);
      },
      child: Text('Borrar Datos Guardados',style: TextStyle(color: Colors.white),),),
    
    ],);
  }
}