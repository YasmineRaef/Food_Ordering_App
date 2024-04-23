import 'package:burger_b_food/generated/l10n.dart';
import 'package:burger_b_food/presentation/customs/custom_bottom_bar.dart';
import 'package:burger_b_food/presentation/resources/routes_and_navigators.dart';
import 'package:burger_b_food/presentation/resources/theme_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      useInheritedMediaQuery: true,
      locale: const Locale("ar"),
      builder: DevicePreview.appBuilder,
      initialRoute: BasicRoutes.welcome,
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: checkThemeImage() ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: BasicRoutes.myRoutes,
    );
  }
}
