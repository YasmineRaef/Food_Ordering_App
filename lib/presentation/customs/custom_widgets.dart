import 'package:burger_b_food/generated/l10n.dart';
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
        Gap(contextHeight(context, 0.02)),
        Container(
            width: contextWidth(context, 0.5),
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
        Gap(contextHeight(context, 0.02)),
        giveData(tabName, context),
        Gap(contextHeight(context, 0.01)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: contextHeight(context, 0.1),
              width: contextWidth(context, 0.1),
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, BasicRoutes.welcome);
                  },
                  child: Icon(Icons.logout_outlined,
                      size: contextWidth(context, 0.05)),
                ),
              ),
            )
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
                ? const Color.fromARGB(152, 255, 100, 34)
                : const Color.fromARGB(130, 238, 162, 48),
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)),
        height: contextHeight(context, 0.22),
        width: contextWidth(context, 0.4),
        child: Column(children: [
          SizedBox(
              height: contextHeight(context, 0.1),
              child: Image(image: AssetImage(imagePath))),
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
      SizedBox(
          height: contextHeight(context, 0.06),
          child: const Image(image: AssetImage('Images/BurgerLogo.jpg'))),
      Text((S.of(context).badgeShop + name),
          style: Theme.of(context).textTheme.bodyMedium)
    ]);
  }
}

double contextHeight(BuildContext context, double num) {
  return (MediaQuery.of(context).size.height * num);
}

double contextWidth(BuildContext context, double num) {
  return (MediaQuery.of(context).size.width * num);
}
