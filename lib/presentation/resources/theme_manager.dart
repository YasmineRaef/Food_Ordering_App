import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 228, 205, 198),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber.shade600,
        ),
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
        appBarTheme: AppBarTheme(backgroundColor: Colors.orange.shade300),
        inputDecorationTheme: InputDecorationTheme(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            filled: true,
            fillColor: Colors.grey.shade300,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange.shade800),
                borderRadius: const BorderRadius.all(Radius.circular(20)))));
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.brown,
        brightness: Brightness.dark,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange.shade500,
        ),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
            bodySmall: TextStyle(fontSize: 16, color: Colors.black)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepOrange.shade500,
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
                    MaterialStateProperty.all(Colors.deepOrange.shade800))),
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange.shade500),
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(color: Colors.white),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            filled: true,
            fillColor: Colors.blueGrey.shade600,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: const BorderRadius.all(Radius.circular(20)))));
  }
}
