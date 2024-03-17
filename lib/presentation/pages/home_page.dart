import 'package:burger_b_food/presentation/customs/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(children: [
      Image(
          fit: BoxFit.cover,
          height: double.infinity,
          image: AssetImage('Images/bg_image.png')),
      HomePageBody()
    ]));
  }
}
