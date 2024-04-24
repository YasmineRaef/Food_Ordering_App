import 'package:burger_b_food/app/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //for system chrome 'full screen'

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const App(projectLang: "en"),
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: []); //full screen
}
