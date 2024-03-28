import 'package:burger_b_food/presentation/customs/assigning_data.dart';
import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCardsView extends StatelessWidget {
  const CustomCardsView(
      {super.key, required this.tabName, required this.tabIcon});
  final String tabName;
  final IconData tabIcon;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Gap(20),
        Container(
            width: 250,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                //theme manager adding....
                color: checkThemeImage()
                    ? Colors.deepOrange.shade500
                    : Colors.amber.shade300,
                border: Border.all(),
                borderRadius: BorderRadius.circular(70)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text(tabName), Icon(tabIcon)])),
        const Gap(20),
        giveData(tabName),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, BasicRoutes.welcome);
                },
                child: const Icon(Icons.logout_outlined, size: 32))
          ],
        )
      ]),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.imagePath, required this.imageDescription});
  final String imagePath;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            //theme manager adding....
            color: checkThemeImage()
                ? Color.fromARGB(152, 255, 100, 34)
                : const Color.fromARGB(130, 238, 162, 48),
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)),
        height: 200,
        width: 190,
        child: Column(children: [
          SizedBox(height: 100, child: Image(image: AssetImage(imagePath))),
          const Gap(10),
          Text(imageDescription,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall)
        ]));
  }
}

class BadgeShop extends StatelessWidget {
  const BadgeShop({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const SizedBox(
          height: 60, child: Image(image: AssetImage('Images/BurgerLogo.jpg'))),
      Text("Welcome $name ", style: Theme.of(context).textTheme.bodyMedium)
    ]);
  }
}
