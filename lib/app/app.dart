import 'package:burger_b_food/app/app_localizations.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

String lang = 'en';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    void changeLang() {
      setState(() {
        lang = (lang == 'en') ? 'ar' : 'en';
      });
    }

    return GetMaterialApp(
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      locale: Locale(lang),
      initialRoute: BasicRoutes.welcome,
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: AppTheme.themeMode,
      debugShowCheckedModeBanner: false,
      routes: BasicRoutes.myRoutes,
    );
  }
}
