import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});
  final TextEditingController myController = TextEditingController();
  final formField = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formField,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                    height: 300,
                    child: Image(image: AssetImage('Images/BurgerLogo.jpg'))),
                const Gap(30),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: myController,
                    decoration:
                        const InputDecoration(hintText: 'Enter your name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name';
                      }
                    },
                  ),
                ),
                SizedBox(
                    width: 100,
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          if (formField.currentState!.validate()) {
                            MyNavigator.goToPage(context,
                                CustomBottomBar(name: myController.text));
                          }
                        },
                        child: Center(
                            child: Text('Enter 😎',
                                style:
                                    Theme.of(context).textTheme.bodyMedium))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
