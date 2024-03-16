import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        height: 50,
        child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'bar');
            },
            child: Center(
                child: Text('Welcome 😎',
                    style: Theme.of(context).textTheme.bodyLarge))));
  }
}
