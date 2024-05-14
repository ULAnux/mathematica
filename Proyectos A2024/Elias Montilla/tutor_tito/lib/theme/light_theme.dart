import 'package:flutter/material.dart';

class LightTheme {
  static final ThemeData temaClaro = ThemeData(
    primaryColor: Colors.yellow,
    secondaryHeaderColor: Colors.amber,
    indicatorColor:Colors.black,
        colorScheme: ColorScheme.fromSwatch(
      
    ).copyWith(
      background: const Color.fromARGB(255, 255, 239, 239),
      primary: Colors.purple,
      secondary: Colors.orange, // Materia
      tertiary: const Color.fromARGB(255, 250, 124, 40), // Periodo
      inversePrimary: const Color.fromARGB(255, 45, 117, 47), // Materia
      primaryContainer: const Color.fromARGB(255, 45, 117, 47), // Materia
      onPrimary : const Color.fromARGB(255, 40, 133, 170), // Materia
      tertiaryContainer:  const Color.fromARGB(255, 45, 117, 47), // Materia
    ),
    dialogBackgroundColor: Colors.white,
    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.blue,
    unselectedItemColor: Colors.white) ,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.blue, 
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
  );
}
