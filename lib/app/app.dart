import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/orders_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/welcome_page.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'welcome',
        theme: AppTheme.getLightTheme(),
        routes: {
          'welcome': (context) => const WelcomePage(),
          'home': (context) => const HomePage(),
          'order': (context) => const OrdersPage(),
          'settings': (context) => const FindNearLocationPage(),
          'bar': (context) => const CustomBottomBar()
        },
        debugShowCheckedModeBanner: false);
  }
}
