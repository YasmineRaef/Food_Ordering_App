import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FindNearLocationPage extends StatelessWidget {
  const FindNearLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const BadgeShop()),
      body: Column(
        children: [
          const Gap(80),
          const Text('Find our nearest branch '),
          const Gap(30),
          const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black)))),
          const Gap(30),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orange.shade300)),
              onPressed: () {},
              child:
                  Text('Search', style: Theme.of(context).textTheme.bodySmall))
        ],
      ),
    );
  }
}
