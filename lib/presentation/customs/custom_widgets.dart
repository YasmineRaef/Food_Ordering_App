import 'package:burger_b_food/presentation/customs/assigning_data.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        height: 50,
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'bar');
            },
            child: Center(
                child: Text('Welcome 😎',
                    style: Theme.of(context).textTheme.bodyLarge))));
  }
}

class CustomCardsView extends StatelessWidget {
  const CustomCardsView(
      {super.key, required this.tabName, required this.tabIcon});
  final String tabName;
  final IconData tabIcon;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          width: 250,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              //theme manager adding....
              color: Colors.amber.shade300,
              border: Border.all(),
              borderRadius: BorderRadius.circular(70)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(tabName), Icon(tabIcon)])),
      giveData(tabName)
    ]);
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
            color: Color.fromARGB(130, 238, 162, 48),
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
