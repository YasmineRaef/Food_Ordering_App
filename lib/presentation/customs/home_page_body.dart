import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SafeArea(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(
            height: 70,
            child: Image(image: AssetImage('Images/BurgerLogo.jpg'))),
        Text("Welcome To Burger B.",
            style: Theme.of(context).textTheme.bodyLarge)
      ])),
      CustomTab(
          tabName: 'Popular',
          tabIcon: Icons.people,
          listPath: burgerDataPth,
          listDescription: burgerDataDes),
      CustomTab(
          tabName: 'Special',
          tabIcon: Icons.timelapse,
          listPath: burgerDataPthSpecial,
          listDescription: burgerDataDesSpecial)
    ]));
  }
}
