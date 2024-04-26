import 'package:burger_b_food/generated/l10n.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FindNearLocationPage extends StatelessWidget {
  const FindNearLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Gap(80),
          Text(S.of(context).locationsQuestion),
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
                  backgroundColor: MaterialStatePropertyAll(
                      AppTheme.themeMode == ThemeMode.light
                          ? Colors.orange.shade300
                          : Colors.orange.shade700)),
              onPressed: () {},
              child: Text(S.of(context).hintLocationText,
                  style: Theme.of(context).textTheme.bodySmall))
        ],
      ),
    );
  }
}
