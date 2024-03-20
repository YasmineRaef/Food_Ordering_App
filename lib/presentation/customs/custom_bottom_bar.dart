import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/sign_up.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(), //_widgetOptions[0]
    const FindNearLocationPage(),
    const SignInPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), label: "SignIn")
        ], onTap: _onItemTapped, currentIndex: _selectedIndex));
  }
}
