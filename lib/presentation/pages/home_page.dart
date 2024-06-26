import 'package:burger_b_food/app/app_localizations.dart';
import 'package:burger_b_food/presentation/customs/custom_widgets.dart';
import 'package:burger_b_food/presentation/customs/list_of_details.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: TabBar(tabs: [
          for (int i = 0; i < tabIcon.length; i++)
            Tab(
                text: "tabName$i".translateS(context),
                icon: Icon(tabIcon[i], color: Colors.black))
        ])),
        body: Stack(
          children: [
            Image(
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
                height: double.infinity,
                image: AppTheme.themeMode == ThemeMode.light
                    ? const AssetImage('Images/bg_image.png')
                    : const AssetImage('Images/bg_imagedark.jpeg')),
            const TabBarContents(),
          ],
        ),
      ),
    );
  }
}

class TabBarContents extends StatelessWidget {
  const TabBarContents({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        for (int i = 0; i < tabIcon.length; i++)
          CustomCardsView(
              tabName: "tabName$i".translateS(context), tabIcon: tabIcon[i])
      ],
    );
  }
}
