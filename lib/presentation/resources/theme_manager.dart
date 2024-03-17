import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.brown.shade200,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.orange.shade300,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
        ),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.amber.shade900))));
  }
}
