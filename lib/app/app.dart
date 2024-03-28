import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: BasicRoutes.welcome,
      theme: checkTheme(),
      debugShowCheckedModeBanner: false,
      routes: BasicRoutes.myRoutes,
    );
  }
}