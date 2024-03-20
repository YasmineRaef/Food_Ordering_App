import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const BadgeShop()),
        body: SafeArea(
            child: Center(
                child: Container(
                    decoration: BoxDecoration(color: Colors.amber.shade400),
                    height: 400,
                    width: 300,
                    child: Column(children: [
                      const Padding(
                          padding: EdgeInsets.all(30),
                          child: Text('Sign-Up to be with us')),
                      for (int i = 0; i < 2; i++) ...[
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                                decoration:
                                    InputDecoration(hintText: hintLabels[i])))
                      ],
                      const Gap(20),
                      TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey)),
                          child: Text('Sign-Up',
                              style: Theme.of(context).textTheme.bodySmall))
                    ])))));
  }
}
