import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key, 
    required this.selectedIndex,
    required this.onItemTapped
  });

  final int selectedIndex;
  final Function onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedFontSize: 14,
      iconSize: 25,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.wechat_outlined),
          label: 'Practicas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.hotel_class_outlined),
          label: 'Historial',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuraciones',
        ),
       
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: (posicion) => onItemTapped(posicion),
    );
  }
}