import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:burger_b_food/presentation/pages/home_page.dart';
import 'package:burger_b_food/presentation/pages/locations.dart';
import 'package:burger_b_food/presentation/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //for system chrome 'full screen'

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, required this.name});
  final String name;
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
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

  @override //for entering full-screen mode in whole project after opening..
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:  BadgeShop(name: widget.name), elevation: 0),
        body: Center(child: _widgetOptions[_selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(items: [
          for (int i = 0; i < 3; i++)
            BottomNavigationBarItem(
                icon: bottomBarIcon[i], label: bottomBarLabel[i]),
        ], onTap: _onItemTapped, currentIndex: _selectedIndex));
  }
}
