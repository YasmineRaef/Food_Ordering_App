import 'package:flutter/material.dart';
import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/welcome_page.dart';

class BasicRoutes {
  static String welcome = 'welcome';
  static String home = 'home';
  static String settings = 'settings';
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    welcome: (context) => WelcomePage(),
    home: (context) => const HomePage(),
    settings: (context) => const FindNearLocationPage()
  };
}

extension MyNavigator on MaterialPageRoute {
   static goToPage(BuildContext context,Widget page) {
     return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => page)));
  }
}
