import 'package:burger_b_food/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //for system chrome 'full screen'

void main() {
  runApp(const App(projectLang: "en"));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: []); //full screen
}
