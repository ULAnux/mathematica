import 'package:flutter/material.dart';

class DarkTheme {
  static final ThemeData temaOscuro = ThemeData(
    primaryColor: const Color.fromARGB(255, 10, 38, 88),
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