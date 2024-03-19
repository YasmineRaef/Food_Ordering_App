import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 228, 205, 198),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            bodyMedium: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            bodySmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
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
                    MaterialStateProperty.all(Colors.amber.shade900))),
        appBarTheme: AppBarTheme(backgroundColor: Colors.orange.shade300));
  }
}
