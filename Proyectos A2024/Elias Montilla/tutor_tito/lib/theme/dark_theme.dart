import 'package:flutter/material.dart';

class DarkTheme {
  static final ThemeData temaOscuro = ThemeData(
    primaryColor: const Color.fromARGB(255, 10, 38, 88),
    indicatorColor:Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.blue,
    unselectedItemColor: Color.fromARGB(255, 255, 255, 255)) ,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 14, 59, 95), 
    ),
    colorScheme: ColorScheme.fromSwatch(
      
    ).copyWith(
      background: Color.fromARGB(255, 194, 187, 187),
      secondaryContainer: Colors.white,
      primary: Colors.purple,
      secondary: Colors.orange, // Materia
      tertiary: const Color.fromARGB(255, 250, 124, 40), // Periodo
      inversePrimary: const Color.fromARGB(255, 45, 117, 47), // Materia
      primaryContainer: const Color.fromARGB(255, 45, 117, 47), // Materia
      onPrimary : const Color.fromARGB(255, 40, 133, 170), // Materia
      tertiaryContainer:  const Color.fromARGB(255, 45, 117, 47), // Materia
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
    ),
  );
}