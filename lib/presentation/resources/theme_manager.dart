import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.brown.shade200,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
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
