import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

bool tabChecker(String tabName) {
  if (tabName == 'POPULAR') {
    return true;
  } else {
    return false;
  }
}

Widget giveData(String nameTab) {
  List listPath;
  List listDes;
  if (tabChecker(nameTab) == true) {
    listPath = burgerDataPth;
    listDes = burgerDataDes;
  } else {
    listPath = burgerDataPthSpecial;
    listDes = burgerDataDesSpecial;
  }
  return Column(children: [
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      for (int i = 0; i < 2; i++) ...[
        CustomCard(imagePath: listPath[i], imageDescription: listDes[i])
      ]
    ]),
    const Gap(20),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      for (int i = 2; i < 4; i++) ...[
        CustomCard(imagePath: listPath[i], imageDescription: listDes[i])
      ]
    ])
  ]);
}
