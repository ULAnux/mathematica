import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';
import 'package:tutor_tito/presentation/screens/pagina_principal.dart';
import 'package:tutor_tito/presentation/widgets/bottom_navigation.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final int indexPage = ref.watch(indexPantalla);
    final PageController controllerPage = ref.watch(pageController);
    return Scaffold(
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
                'Puntaje de hoy: 0',
                style: TextStyle(color: Theme.of(context).indicatorColor),
              ),
            )),
      ),
      body: PageView(
        controller: controllerPage,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          PaginaPrincipal(size: size,),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Historial')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Configuraciones')),
          ),
        ],
      ),

      //PaginaPrincipal(size: size,),
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
