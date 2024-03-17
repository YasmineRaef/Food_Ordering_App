import 'package:flutter/material.dart';

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

class LRCardView extends StatelessWidget {
  const LRCardView(
      {super.key, required this.imagePath, required this.burgerDescription});
  final String imagePath;
  final String burgerDescription;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(width: 200, child: Image(image: AssetImage(imagePath))),
      SizedBox(
          height: 150,
          width: 150,
          child: Text(burgerDescription,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20)))
    ]);
  }
}

class RLCardView extends StatelessWidget {
  const RLCardView(
      {super.key, required this.imagePath, required this.burgerDescription});
  final String imagePath;
  final String burgerDescription;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
          width: 150,
          child: Text(
            burgerDescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          )),
      SizedBox(height: 200, child: Image(image: AssetImage(imagePath)))
    ]);
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab(
      {super.key,
      required this.tabName,
      required this.listPath,
      required this.listDescription,
      required this.tabIcon});
  final String tabName;
  final List listPath;
  final List listDescription;
  final IconData tabIcon;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 30),
      Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amber.shade300,
            borderRadius: BorderRadius.circular(70)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(tabName), Icon(tabIcon)],
        ),
      ),
      for (int i = 0; i < 4; i += 2) ...[
        const SizedBox(height: 20),
        LRCardView(
            imagePath: listPath[i], burgerDescription: listDescription[i]),
        const SizedBox(height: 20),
        RLCardView(
            imagePath: listPath[i + 1],
            burgerDescription: listDescription[i + 1])
      ]
    ]);
  }
}
