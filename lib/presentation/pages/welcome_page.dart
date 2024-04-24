import 'package:burger_b_food/app/app.dart';
import 'package:burger_b_food/generated/l10n.dart';
import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                    style: Theme.of(context).textTheme.bodySmall,
                    controller: myController,
                    decoration:
                        InputDecoration(hintText: S.of(context).hintNameText),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).errorMessage;
                      }
                    },
                  ),
                ),
                SizedBox(
                    width: contextWidth(context, 0.24),
                    height: contextHeight(context, 0.05),
                    child: TextButton(
                        onPressed: () {
                          if (formField.currentState!.validate()) {
                            MyNavigator.goToPage(context,
                                CustomBottomBar(name: myController.text));
                          }
                        },
                        child: Center(
                            child: Text(S.of(context).welcomeButton,
                                style:
                                    Theme.of(context).textTheme.bodySmall)))),
                const Gap(20),
                Text(S.of(context).languageButton),
                const Gap(20),
                IconButton(
                    onPressed: () {
                      if (arabicChecker() == true) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const App(projectLang: "en")));
                      } else if (arabicChecker() == false) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const App(projectLang: "ar")));
                      }
                    },
                    hoverColor: Colors.deepOrange.shade400,
                    icon: const Icon(Icons.abc, size: 36))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool arabicChecker() {
  return (Intl.getCurrentLocale() == "ar");
}
