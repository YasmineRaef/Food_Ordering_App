
import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/welcome_page.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      theme: AppTheme.getLightTheme(),
      debugShowCheckedModeBanner: false,
      routes: {
        'welcome': (context) => WelcomePage(),
        'home': (context) => const HomePage(),
        'settings': (context) => const FindNearLocationPage()
      },
      
    );
  }
}
