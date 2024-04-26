import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTheme {
  static ThemeMode themeMode = ThemeMode.light;
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 228, 205, 198),
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
        scaffoldBackgroundColor: const Color.fromARGB(225, 38, 50, 56),
        brightness: Brightness.dark,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 255, 152, 0),
        ),
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
            bodySmall: TextStyle(fontSize: 16, color: Colors.white)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.orange.shade700,
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
                    MaterialStateProperty.all(Colors.orange.shade500))),
        appBarTheme: AppBarTheme(backgroundColor: Colors.orange.shade700),
        inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            filled: true,
            fillColor: Colors.orange.shade500,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: const BorderRadius.all(Radius.circular(20)))));
  }

  static void changeThemeMode() => Get.changeThemeMode(themeMode =
      themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
}
