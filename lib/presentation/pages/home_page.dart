import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                  text: 'POPULAR',
                  icon: Icon(Icons.people, color: Colors.black)),
              Tab(
                  text: 'SPECIAL',
                  icon: Icon(
                    Icons.timelapse,
                    color: Colors.black,
                  ))
            ]),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                    height: 70,
                    child: Image(image: AssetImage('Images/BurgerLogo.jpg'))),
                Text("Welcome To Burger B.",
                    style: Theme.of(context).textTheme.bodyLarge)
              ],
            ),
          ),
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
    return const TabBarView(children: [
      CustomCardsView(tabName: 'POPULAR', tabIcon: Icons.people),
      CustomCardsView(tabName: 'SPECIAL', tabIcon: Icons.timelapse)
    ]);
  }
}
