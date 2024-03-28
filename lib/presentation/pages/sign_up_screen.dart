import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber.shade400, border: Border.all(width: 2)),
          height: 400,
          width: 300,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text('Sign-Up to be with us',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black))),
              for (int i = 0; i < 2; i++)
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                        decoration: InputDecoration(hintText: hintLabels[i]))),
              const Gap(20),
              TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                  child: Text('Sign-Up',
                      style: Theme.of(context).textTheme.bodySmall))
            ],
          ),
        ),
      ),
    );
  }
}
