import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tutor_tito/domain/datasources.dart';
import 'package:tutor_tito/domain/entities/puntaje_dia.dart';
import 'package:tutor_tito/infrastructure/models/actividad_permutaciones.dart';
import 'package:tutor_tito/infrastructure/models/notas_completas.dart';
import 'package:tutor_tito/infrastructure/models/palabra_evaluada.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';

import '../../utils/comparar_frases.dart';

class Permutaciones extends ConsumerStatefulWidget {
  const Permutaciones(
      {super.key,
      required this.data,
      required this.permutaciones,
      required this.desbloqueadaPermutaciones});
  final List<Actividad> permutaciones;
  final NotasCompletas data;
  final int desbloqueadaPermutaciones;
  @override
  PermutacionesState createState() => PermutacionesState();
}

class PermutacionesState extends ConsumerState<Permutaciones> {
  List<Widget> actividades = [];
  List<ExpansionTileController> expansionTileControllers = [];
  int index = 0;
  int desbloq = 0;
  @override
  void initState() {
    super.initState();
    desbloq = widget.desbloqueadaPermutaciones;
    for (int i = 0; i < widget.permutaciones.length; i++) {
      if (i % 3 == 0 && i != 0) {
        widget.permutaciones[i].indice = index;
        expansionTileControllers.add(ExpansionTileController());
        actividades.add(ExpanderActDos(
            desbloqueadaPermutaciones: desbloq,
            expansionTileControllers: expansionTileControllers,
            index: index,
            widget: widget,
            i: i));
        index++;
      } else {
        if (widget.permutaciones[i].fraseCompleta != null) {
          widget.permutaciones[i].indice = index;
          expansionTileControllers.add(ExpansionTileController());
          actividades.add(Expander(
              desbloqueadaPermutaciones: widget.desbloqueadaPermutaciones,
              expansionTileControllers: expansionTileControllers,
              index: index,
              widget: widget,
              i: i));
          index++;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appBarPermutacion(context, widget.data),
      body: SingleChildScrollView(
        child: Column(
          children: actividades,
        ),
      ),
    );
  }
}

PreferredSizeWidget appBarPermutacion(
    BuildContext context, NotasCompletas data) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'Permutaciones',
      style: TextStyle(color: Colors.white),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.white,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        'Nota Completa',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  content: SizedBox(
                    height: 500,
                    width: 1000,
                    child: ListView(
                      children: data.contenido.split('\n\n').map((e) {
                        if (e.contains('{IMAGE1}')) {
                          return Center(
                              child: Image.asset('assets/image1.jpg'));
                        }
                        if (e.contains('{IMAGE2}')) {
                          return Center(
                              child: Image.asset('assets/image2.jpg'));
                        }
                        if (e.contains('{IMAGE3}')) {
                          return Center(
                              child: Image.asset('assets/image3.jpg'));
                        }
                        if (e.contains('{FORMULA1}')) {
                          return Center(
                              child: Image.asset('assets/formula1.jpg'));
                        }
                        if (e.contains('{FORMULA2}')) {
                          return Center(
                              child: Image.asset('assets/formula2.jpg'));
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(e, style: const TextStyle(fontSize: 20)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.help_outline_rounded,
              color: Colors.white,
            )),
      )
    ],
  );
}

class ExpanderActDos extends ConsumerWidget {
  const ExpanderActDos(
      {super.key,
      required this.expansionTileControllers,
      required this.index,
      required this.widget,
      required this.i,
      required this.desbloqueadaPermutaciones});

  final List<ExpansionTileController> expansionTileControllers;
  final int index;
  final Permutaciones widget;
  final int i;
  final int desbloqueadaPermutaciones;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nivelA1 = ref.watch(nivel1);
    final nivelA2 = ref.watch(nivel2);
    final sitengoElemen = ref.watch(sitengo);
    final seRepiten = ref.watch(serepiten);
    final desbloque = ref.watch(premutacionDesbloqueo);
    final actividadDos = ref.watch(resultadosActividaDosPerm);
    final completados = ref.watch(hoyResutosPermuta);
    final finalDos = ref.watch(actividadDosFinal);
    final actividDosResultados = ref.watch(actividaddosResultados);
    return ExpansionTile(
      controller: expansionTileControllers[index],
      enabled: desbloque > index,
      collapsedBackgroundColor: desbloque > index
          ? const Color.fromARGB(255, 245, 216, 128)
          : const Color.fromARGB(255, 201, 201, 202),
      onExpansionChanged: (isExpanded) {
        if( completados.contains(index) ){
          ref.read(actividaddosResultados.notifier).state='completo';
        }else{
          ref.read(actividaddosResultados.notifier).state='';
        }
        if (isExpanded) {
          for (var controller in expansionTileControllers) {
            if (controller.isExpanded && controller != expansionTileControllers[widget.permutaciones[i].indice]) {
              controller.collapse();
            }
          }
        }
      },
      title: Row(
        children: [
          completados.contains(index) ? const Icon(Icons.check_box_outlined) : const Icon(Icons.check_box_outline_blank_outlined),
          const SizedBox(
            width: 10,
          ),
          Text('Ejercicio Numero ${index + 1}'),
        ],
      ),
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              color: Colors.amber[200],
              child: 
              actividDosResultados.isNotEmpty && actividDosResultados == 'correcto'? 
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                child: Column(
                  children: [
                    Icon(Icons.military_tech, size: 40,color:Colors.white),
                    Text('¡Completaste el ejercicio, Felicidades, respuesta correcta! +50 puntos ¡Sigue avanzando! ', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
              )
               : actividDosResultados.isNotEmpty && actividDosResultados == 'completo'? 
                Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                child: Column(
                  children: [
                    Icon(Icons.check, size: 40,color:Colors.white),
                    Text('¡Completaste el ejercicio! mañana puedes volver a intentarlo ', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                )
                )
              : actividDosResultados.isNotEmpty && actividDosResultados == 'fail'? 
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                child: Column(
                  children: [
                    Icon(Icons.mood_bad_rounded, size: 40,color:Colors.white),
                    Text('¡Te equivocaste! No era la opción correcta, pierdes 50 puntos', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
              )
              :
              actividadDos.isNotEmpty?
              Container( 
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber[100]),
                child: Column(
                  children: [
                    Center(child: Text('Resultado: \n ${(widget.permutaciones[0].resultados![finalDos]).toString().replaceAll('{PERM}', '{n}! / {r}! = {total}  El total de elementos es {n} donde {r} es la frecuencia en la que se repiten los elementos').replaceAll('{n}', sitengoElemen).toString().replaceAll('{r}', seRepiten).replaceAll('{factorial}', '${factorial(int.parse(sitengoElemen))}').replaceFirst('{varian}', '${elevar((int.parse(sitengoElemen)),int.parse(sitengoElemen) )}').replaceFirst('{variacion}', '${elevar((int.parse(sitengoElemen) - int.parse(seRepiten)),int.parse(sitengoElemen) )}').replaceFirst('{noresper}', '${1/(factorial(int.parse(sitengoElemen))) }').replaceFirst('{resper}', '${1/(factorial(int.parse(sitengoElemen)) / factorial(int.parse(seRepiten)))}').replaceFirst('{total}', '${(factorial(int.parse(sitengoElemen))/int.parse(seRepiten)).ceil()}')} \n',style: TextStyle(fontSize: 18),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      MaterialButton(
                        color: Theme.of(context).colorScheme.onPrimary,
                        onPressed: (){
                          ref.read(actividadDosFinal.notifier).state='';
                          ref.read(resultadosActividaDosPerm.notifier).state='';  
                          ref.read(nivel1.notifier).state='';
                          ref.read(nivel2.notifier).state='';
                           late PuntajeDia ejercicioCompleto;
                           switch(finalDos){
                            case '111':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '112':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '113':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                             case '121':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '122':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '123':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '21':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                           ejercicioCompleto =   PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '22':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '31':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '32':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                          }
                      
                          DBProvider.db.nuevaPuntaje(ejercicioCompleto);
                          DBProvider.db.updatePermutacion(1, {'desbloquedo': desbloque + 1});
                          ref.read(premutacionDesbloqueo.notifier).update((state) => state + 1);
                          ref.read(hoyResutosPermuta.notifier).update((state) => [...state, index]);

                        }, child: Text('Permutación',style: TextStyle(color: Colors.white),),),
                        const SizedBox(width: 5,),
                        MaterialButton(
                        color: Theme.of(context).colorScheme.primary,
                        onPressed: (){
                         ref.read(actividadDosFinal.notifier).state='';
                          ref.read(resultadosActividaDosPerm.notifier).state='';  
                          ref.read(nivel1.notifier).state='';
                          ref.read(nivel2.notifier).state='';
                           late PuntajeDia ejercicioCompleto;
                           switch(finalDos){
                            case '111':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '112':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '113':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '121':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '122':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '123':
                            ref.read(actividaddosResultados.notifier).state='fail';
                             ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '21':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                           ejercicioCompleto =   PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '22':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '31':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '32':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                          }
                      
                          DBProvider.db.nuevaPuntaje(ejercicioCompleto);
                          DBProvider.db.updatePermutacion(1, {'desbloquedo': desbloque + 1});
                          ref.read(premutacionDesbloqueo.notifier).update((state) => state + 1);
                          ref.read(hoyResutosPermuta.notifier).update((state) => [...state, index]);

                        }, child: Text('Variación',style: TextStyle(color: Colors.white),),),
                         const SizedBox(width: 5,),
                         MaterialButton(
                        color:  Theme.of(context).colorScheme.secondary,
                        onPressed: (){
                         ref.read(actividadDosFinal.notifier).state='';
                          ref.read(resultadosActividaDosPerm.notifier).state='';  
                          ref.read(nivel1.notifier).state='';
                          ref.read(nivel2.notifier).state='';
                           late PuntajeDia ejercicioCompleto;
                           switch(finalDos){
                            case '111':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '112':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '113':
                            ref.read(actividaddosResultados.notifier).state='fail';
                             ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                             case '121':
                            ref.read(actividaddosResultados.notifier).state='fail';
                             ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '122':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '123':
                            ref.read(actividaddosResultados.notifier).state='fail';
                             ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '21':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                            case '22':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '31':
                            ref.read(actividaddosResultados.notifier).state='fail';
                            ref.read(totalPuntaje.notifier).update((state) => state-50);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '-50');
                            break;
                            case '32':
                            ref.read(actividaddosResultados.notifier).state='correcto';
                            ref.read(totalPuntaje.notifier).update((state) => state+50);
                            ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '50' ]);
                            ejercicioCompleto =  PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '50');
                            break;
                          }
                      
                          DBProvider.db.nuevaPuntaje(ejercicioCompleto);
                          DBProvider.db.updatePermutacion(1, {'desbloquedo': desbloque + 1});
                          ref.read(premutacionDesbloqueo.notifier).update((state) => state + 1);
                          ref.read(hoyResutosPermuta.notifier).update((state) => [...state, index]);
                        }, child: Text('Combinación',style: TextStyle(color: Colors.white),),)
                    ],),
                  ],
                ),)
               : Column(children: [
                  const Text(
                    'Elige el enunciado del ejercicio que se va a resolver',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.permutaciones[0].nivel1A!.map((palabra) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: palabra.contains('[') ? GestureDetector(
                      onTap: () {
                        ref.read(actividadDosFinal.notifier).state = '1';
                        ref.read(nivel1.notifier).state ='si tengo';
                        ref.read(nivel2.notifier).state = '';
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                            BorderRadius.circular(15),
                          color: nivelA1 == 'si tengo'
                            ? Colors.green[200]
                            : Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0),
                          child: Row(
                            children: [
                              Text(palabra.substring(
                                  0, palabra.indexOf('[') - 1)),
                              const SizedBox(width: 5),
                              DropdownButton<String>(
                                padding: const EdgeInsets.all(0),
                                value: sitengoElemen,
                                items: palabra.substring(palabra.indexOf('[') + 1,palabra.indexOf(']')).split('-').map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,));
                                }).toList(),
                                onChanged: (value) {
                                  ref.read(actividadDosFinal.notifier).state = '1';
                                  ref.read(sitengo.notifier).state = value!;
                                  ref.read(nivel2.notifier).state = '';
                                  ref.read(nivel1.notifier).state = 'si tengo';
                                },
                              ),
                              const SizedBox(width: 5),
                              const Text('elementos')
                            ],
                          ),
                        ),
                      ),
                    )
                      : GestureDetector(
                          onTap: () {
                            ref.read(nivel2.notifier).state = '';
                            ref.read(nivel1.notifier).state = palabra;
                            if(palabra == 'Cuántas'){
                              ref.read(actividadDosFinal.notifier).state = '2';
                            }else{
                              ref.read(actividadDosFinal.notifier).state = '3';
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                              color: palabra == 'Cuántas' && nivelA1 == 'Cuántas'
                                ? Colors.green[200]
                                : nivelA1 == 'Se puede' && palabra == 'Se puede'
                                  ? Colors.green[200]
                                  : Colors.white),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric( horizontal: 10.0),
                              child: Text(palabra),
                            ))),
                        ));
                      }).toList()),
                  if (nivelA1.isNotEmpty)
                    Container(
                      decoration: BoxDecoration(color: Colors.green[100]),
                      child: nivelA1 == 'si tengo' ? 
                      SingleChildScrollView(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widget.permutaciones[0].nivel2A!.map((palabra) {
                          return palabra.contains('[') ? GestureDetector(
                            onTap: () {
                              ref.read(actividadDosFinal.notifier).update((state) => '${state[0]}1');
                              ref.read(nivel2.notifier).state = 'se repiten';
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular( 15),
                                  color: nivelA2 == 'se repiten'
                                    ? const Color .fromARGB(255, 200, 211, 230)
                                    : Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Text('y'),
                                      const SizedBox( width: 5),
                                      DropdownButton<String>(
                                        padding: const EdgeInsets.all(0),
                                        value: seRepiten,
                                        items: palabra.substring(palabra.indexOf('[') + 1,palabra.indexOf(']')).split('-').map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value));
                                        }).toList(),
                                        onChanged: (value) {
                                          ref.read(serepiten.notifier).state = value!;
                                          ref.read(nivel1.notifier).state = 'si tengo';
                                        },
                                      ),
                                      const SizedBox(width: 5),
                                      Text(palabra.substring(palabra.indexOf(']') +1,palabra.length)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            )
                              : GestureDetector(
                                  onTap: () {
                                    ref.read(actividadDosFinal.notifier).update((state) => '${state[0]}2');
                                    ref.read(nivel2.notifier).state = 'no se repiten';
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(15),
                                        color: nivelA2 == 'no se repiten'
                                          ? const Color.fromARGB(255, 200, 211, 230)
                                          : Colors.white),
                                      child: Center(child: Padding(
                                        padding: const EdgeInsets.symmetric( horizontal: 10.0),
                                        child: Text(palabra),
                                      ))),
                                  ),
                                );
                              }).toList()),
                            )
                          : nivelA1 == 'Cuántas'
                            ? SingleChildScrollView(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: widget
                                        .permutaciones[0].nivel2B!
                                        .map((palabra) {
                                      return GestureDetector(
                                        onTap: (){
                                          if(palabra.contains('comienzan')){
                                            ref.read(actividadDosFinal.notifier).state='22';
                                          }else{
                                            ref.read(actividadDosFinal.notifier).state='21';
                                          }
                                          ref.read(resultadosActividaDosPerm.notifier).state = palabra;
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                BorderRadius.circular(15),
                                              color: palabra == 'Cuántas' && nivelA1 == 'Cuántas'
                                                ? Colors.green[200]
                                                : nivelA1 == 'Se puede' && palabra =='Se puede'
                                                  ? Colors.green[200]
                                                  : Colors.white),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                child: Text(palabra))),
                                          ),
                                        ),
                                      );
                                    }).toList()),
                                )
                              : SingleChildScrollView(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: widget
                                          .permutaciones[0].nivel2C!
                                          .map((palabra) {
                                        return GestureDetector(
                                          onTap: (){
                                            if(palabra == 'combinar'){
                                              ref.read(actividadDosFinal.notifier).state='31';
                                            }else{
                                              ref.read(actividadDosFinal.notifier).state='32';
                                            }
                                            ref.read(resultadosActividaDosPerm.notifier).state = palabra;
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular( 15),
                                                color: Colors.white),
                                              child: Center(
                                                child: Padding(
                                                  padding:const EdgeInsets.symmetric( horizontal: 10.0),
                                                  child: Text(palabra)))),
                                          ),
                                        );
                                      }).toList()),
                                )),
                  if (nivelA2.isNotEmpty)
                    Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 200, 211, 230)),
                        child: nivelA2 == 'se repiten' ||
                                nivelA2 == 'no se repiten'
                            ? Wrap(
                                children: widget.permutaciones[0].nivel3A!
                                    .map((palabra) {
                                return GestureDetector(
                                  onTap: (){
                                    print('pala $palabra');
                                    if(palabra.contains('posibilidad')){
                                      ref.read(actividadDosFinal.notifier).update((state) => '${state}3');
                                    }
                                    if(palabra.contains('diferentes')){
                                      ref.read(actividadDosFinal.notifier).update((state) => '${state}1');
                                    }
                                    if(palabra.contains('recorridos ')){
                                      ref.read(actividadDosFinal.notifier).update((state) => '${state}2');
                                    }
                                    ref.read(resultadosActividaDosPerm.notifier).state = palabra;
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white),
                                        child: Center(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Text(palabra),
                                        ))),
                                  ),
                                );
                              }).toList())
                            : nivelA1 == 'Cuántas'
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: widget.permutaciones[0].nivel2B!
                                        .map((palabra) {
                                      return GestureDetector(
                                        onTap: (){
                                          print('obcion $palabra');
                                            print('obcion ');
                                            ref.read(resultadosActividaDosPerm.notifier).state = palabra;
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.white),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                child: Text(palabra))),
                                          ),
                                        ),
                                      );
                                    }).toList())
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: widget.permutaciones[0].nivel2C!
                                .map((palabra) {
                              return GestureDetector(
                                onTap: (){
                                  print(' esta $palabra');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(15),color: Colors.white),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Text(palabra)))),
                                ),
                              );
                            }).toList())),
                ],
              ),
            ))
      ],
    );
  }
  int factorial(int n) {
  if (n < 0) return 0;
  return n <= 1 ? 1 : n * factorial(n - 1);
}
}

class Expander extends ConsumerWidget {
  const Expander({
    super.key,
    required this.expansionTileControllers,
    required this.index,
    required this.widget,
    required this.desbloqueadaPermutaciones,
    required this.i,
  });

  final List<ExpansionTileController> expansionTileControllers;
  final int index;
  final Permutaciones widget;
  final int i;
  final int desbloqueadaPermutaciones;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palabrasActividad = ref.watch(actividaActual);
    final selecionarPalabras = ref.watch(actividaSelecionar);
    final resultadoEvaluacion = ref.watch(actividadResultados);
    final continua = ref.watch(continuarActividad1);
    final desbloque = ref.watch(premutacionDesbloqueo);
    final completados = ref.watch(hoyResutosPermuta);
    final permutacionPuntaje = ref.watch(hoyResutosPermutaPuntaje);
    int posicion = -1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        controller: expansionTileControllers[index],
        onExpansionChanged: (isExpanded) {
             if(posicion == -1){
                posicion = index;
              }
          if (isExpanded) {
             
            if( completados.contains(index) ){
              ref.read(continuarActividad1.notifier).state = 'continuar';
            }else{
              ref.read(continuarActividad1.notifier).state ='';
            }

            ref.read(actividaSelecionar.notifier).state = [];
            ref.read(actividadResultados.notifier).state = [];
            ref.read(actividaActual.notifier).state =
                widget.permutaciones[i].palabras!;
            for (var controller in expansionTileControllers) {
              if (controller.isExpanded &&
                  controller !=expansionTileControllers[widget.permutaciones[i].indice]) {
                controller.collapse();
              }
            }
          }
        },
        enabled: desbloque > index,
        collapsedBackgroundColor: desbloque > index
            ? const Color.fromARGB(255, 160, 217, 255)
            : const Color.fromARGB(255, 201, 201, 202),
        title: Row(
          children: [
             completados.contains(index) ? const Icon(Icons.check_box_outlined) : const Icon(Icons.check_box_outline_blank_outlined),
            const SizedBox(
              width: 10,
            ),
            Text('Actividad Número ${index + 1}'),
          ],
        ),
        children: [
          const Text(
            'Completa la Actividad, elige las palabras para completar la frase',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 216, 232, 245)),
            child: resultadoEvaluacion.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      children: resultadoEvaluacion.isNotEmpty
                          ? resultadoEvaluacion.map((palabra) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  backgroundColor: palabra.posicion == 1
                                      ? const Color.fromARGB(131, 76, 175, 79)
                                      : palabra.posicion == 2
                                          ? const Color.fromARGB(
                                              111, 255, 153, 0)
                                          : const Color.fromARGB(
                                              136, 244, 67, 54),
                                  deleteButtonTooltipMessage: 'Quitar',
                                  label: Text(palabra.palabra),
                                ),
                              );
                            }).toList()
                          : [],
                    ),
                  )
                : null,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 216, 232, 245)),
            child: selecionarPalabras.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Wrap(
                      children: selecionarPalabras.isNotEmpty
                          ? selecionarPalabras.map((palabra) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  backgroundColor: Theme.of(context).dialogBackgroundColor,
                                  deleteButtonTooltipMessage: 'Quitar',
                                  label: Text(palabra),
                                  onDeleted: () {
                                    ref
                                        .read(actividaActual.notifier)
                                        .update((state) => [...state, palabra]);
                                    ref
                                        .read(actividaSelecionar.notifier)
                                        .update((state) => state
                                            .where(
                                                (element) => element != palabra)
                                            .toList());
                                  },
                                ),
                              );
                            }).toList()
                          : [],
                    ),
                  )
                : null,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100]),
            child: palabrasActividad.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      children: palabrasActividad.map((palabra) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(actividaSelecionar.notifier)
                                  .update((state) => [...state, palabra]);
                              ref.read(actividaActual.notifier).update(
                                  (state) => state
                                      .where((element) => element != palabra)
                                      .toList());
                            },
                            child: Chip(
                              backgroundColor: Theme.of(context).dialogBackgroundColor,
                              label: Text(palabra),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                : null,
          ),
          if (continua.isEmpty)
            const SizedBox(
              height: 20,
            ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            continua.isEmpty
                ? MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      if (palabrasActividad.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => const Dialog(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Atención \n Te faltan palabras por selecionar',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                        return;
                      }
                      String cadena = encontrarMasSimilar(
                          selecionarPalabras.join(' '),
                          widget.permutaciones[i].frasesCorrectras!);
                      // print('$cadena \n ${selecionarPalabras.join(' ')}');
                      List<PalabraEvaluada> resultado =
                          evaluarFrase(cadena, selecionarPalabras.join(' '));
                      ref.read(actividadResultados.notifier).state = resultado;

                      ref.read(actividaSelecionar.notifier).state = [];
                      ref.read(continuarActividad1.notifier).state =
                          'continuar';
                      int tamanio = resultado.length;
                      print(tamanio);
                      double total = 0;
                      for (var element in resultado) {
                        switch ( element.posicion){
                          case 1:
                            total = ( 1 / tamanio ) + total;
                          break;
                          case 2:
                            total = (( 1/ tamanio)/2) + total;
                          break;
                          case 3:
                           
                          break;
                        }
                      }
                      double calculo =  total*100;
                      print(calculo.ceil());
                      // guardar el dia, el puntaje y el ejercicio
                      PuntajeDia ejercicioCompleto = PuntajeDia(ejercicio: index+1,fecha:  DateFormat('dd-MM-yyyy').format(DateTime.now()), tema: 'Permutaciones',puntaje: '${calculo.ceil()}');
                      DBProvider.db.updatePermutacion(1, {'desbloquedo': desbloque});
                      DBProvider.db.nuevaPuntaje(ejercicioCompleto);

                      ref.read(hoyResutosPermutaPuntaje.notifier).update((state) => [...state, '${calculo.ceil()}' ]);
                      ref.read(premutacionDesbloqueo.notifier).update((state) => state + 1);
                      ref.read(hoyResutosPermuta.notifier).update((state) => [...state, index]);
                      ref.read(totalPuntaje.notifier).update((state) => state+calculo);
                    },
                    child: const Text(
                      'Evaluar',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : const SizedBox()
          ]),
          const SizedBox(
            height: 20,
          ),
          if (continua.isNotEmpty)
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                  child: Text(
                'Estos son tus resultados: ${ widget.permutaciones[i].indice < permutacionPuntaje.length ? permutacionPuntaje[widget.permutaciones[i].indice] : '0' } de 100\nPuedes volver a evaluar mañana',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          if (continua.isNotEmpty)
            const SizedBox(
              height: 20,
            ),
        ],
      ),
    );
  }
}
