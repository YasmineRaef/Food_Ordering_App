import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                    text: 'POPULAR',
                    icon: Icon(Icons.people, color: Colors.black)),
                Tab(
                    text: 'SPECIAL',
                    icon: Icon(Icons.timelapse, color: Colors.black)),
                Tab(
                    text: 'OTHER',
                    icon: Icon(Icons.local_drink_rounded, color: Colors.black))
              ]),
              title: const BadgeShop()),
          body: const Stack(children: [
            Image(
                fit: BoxFit.cover,
                height: double.infinity,
                image: AssetImage('Images/bg_image.png')),
            TabBarContents()
          ])),
    );
  }
}

class TabBarContents extends StatelessWidget {
  const TabBarContents({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      for (int i = 0; i < 3; i++) ...[
        CustomCardsView(tabName: tabName[i], tabIcon: tabIcon[i])
      ]
    ]);
  }
}
