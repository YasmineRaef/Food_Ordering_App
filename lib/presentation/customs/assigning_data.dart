import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

int tabChecker(String tabName) {
  if (tabName == 'POPULAR') {
    return 1;
  } else if (tabName == 'SPECIAL') {
    return 2;
  } else {
    return 3;
  }
}

Widget giveData(String nameTab, BuildContext context) {
  List listPath;
  List listDes;
  if (tabChecker(nameTab) == 1) {
    listPath = burgerDataPth;
    listDes = burgerDataDes;
  } else if (tabChecker(nameTab) == 2) {
    listPath = burgerDataPthSpecial;
    listDes = burgerDataDesSpecial;
  } else {
    listPath = drinksPth;
    listDes = drinksDes;
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
