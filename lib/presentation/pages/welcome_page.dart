import 'package:burger_b_food/app/app.dart';
import 'package:burger_b_food/app/app_localizations.dart';
import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                    decoration: InputDecoration(
                        hintText: "welcomeQues".translateS(context)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "welcomeErrorMsg".translateS(context);
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
                            child: Text("welcomeButton".translateS(context),
                                style:
                                    Theme.of(context).textTheme.bodySmall)))),
                const Gap(20),
                Text("translatingMsg".translateS(context)),
                const Gap(20),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (checkCurrentLocale() == true) {
                          myLocale = const Locale('ar');
                        } else {
                          myLocale = const Locale('en');
                        }
                        AppTheme.changeModeLanguage(myLocale);
                      });
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
