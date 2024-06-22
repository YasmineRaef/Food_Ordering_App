import 'package:burger_b_food/app/app_localizations.dart';
import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget giveData(String nameTab, BuildContext context) {
  List listPath;
  List listDes;

  int tabChecker(String tabName) {
    if (tabName == "tabName0".translateS(context)) {
      return 1;
    } else if (tabName == "tabName1".translateS(context)) {
      return 2;
    } else {
      return 3;
    }
  }

  List ListBurgerData = [
    "BurgerDataDes0".translateS(context),
    "BurgerDataDes1".translateS(context),
    "BurgerDataDes2".translateS(context),
    "BurgerDataDes3".translateS(context),
  ];
  List BurgerDataDesSpecial = [
    "BurgerDataDesSpecial0".translateS(context),
    "BurgerDataDesSpecial1".translateS(context),
    "BurgerDataDesSpecial2".translateS(context),
    "BurgerDataDesSpecial3".translateS(context),
  ];
  List DrinkDes = [
    "drinksDes0".translateS(context),
    "drinksDes1".translateS(context),
    "drinksDes2".translateS(context),
    "drinksDes3".translateS(context),
  ];
  if (tabChecker(nameTab) == 1) {
    listPath = burgerDataPth;
    listDes = ListBurgerData;
  } else if (tabChecker(nameTab) == 2) {
    listPath = burgerDataPthSpecial;
    listDes = BurgerDataDesSpecial;
  } else {
    listPath = drinksPth;
    listDes = DrinkDes;
  }
  return Column(children: [
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      for (int i = 0; i < 2; i++)
        CustomCard(imagePath: listPath[i], imageDescription: listDes[i])
    ]),
    Gap(contextHeight(context, 0.02)),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      for (int i = 2; i < 4; i++)
        CustomCard(imagePath: listPath[i], imageDescription: listDes[i])
    ])
  ]);
}
