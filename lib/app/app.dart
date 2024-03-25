
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: BasicRoutes.welcome,
      theme: AppTheme.getLightTheme(),
      debugShowCheckedModeBanner: false,
      routes: BasicRoutes.myRoutes,
    );
  }
}
