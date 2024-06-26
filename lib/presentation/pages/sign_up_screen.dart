import 'package:burger_b_food/app/app_localizations.dart';
import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
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
              color: Colors.amber.shade400,
              border: Border.all(width: 2, color: Colors.white)),
          height: contextHeight(context, 0.6),
          width: contextWidth(context, 0.7),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text("signUpTxt".translateS(context),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black))),
              Gap(contextHeight(context, 0.01)),
              for (int i = 0; i < 2; i++)
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "signUpField$i".translateS(context)))),
              Gap(contextHeight(context, 0.01)),
              TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                  child: Text("signUpButton".translateS(context),
                      style: Theme.of(context).textTheme.bodySmall))
            ],
          ),
        ),
      ),
    );
  }
}
