import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  child: Image(image: AssetImage('Images/BurgerLogo.jpg'))),
              Gap(70),
              CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}
