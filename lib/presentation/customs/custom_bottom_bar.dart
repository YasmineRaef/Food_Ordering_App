import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/sign_up_screen.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

bool iconBool = false; //on toggle t or f mode changes ....

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, required this.name});
  final String name;
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final IconData _iconLight = Icons.wb_sunny;
  final IconData _iconDark = Icons.nights_stay;

  late int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(), //_widgetOptions[0]
    const FindNearLocationPage(),
    const SignUpScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(elevation: 0, title: BadgeShop(name: widget.name), actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  iconBool = !iconBool;
                });
                AppTheme.changeThemeMode();
              },
              icon: Icon(iconBool ? _iconDark : _iconLight))
        ]),
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(items: [
          for (int i = 0; i < 3; i++)
            BottomNavigationBarItem(
                icon: bottomBarIcon[i], label: bottomBarLabel[i]),
        ], onTap: _onItemTapped, currentIndex: _selectedIndex));
  }
}

bool checkThemeImage() {
  if (iconBool == true) {
    // case dark is chosen
    return true;
  } else {
    // case light is chosen
    return false;
  }
}
