import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'View your Orders',
              textAlign: TextAlign.center,
            ),
          ),
          for (int i = 0; i < 20; i++) ...[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Order')),
            ),
            const Divider(
              height: 6,
            )
          ]
        ]))));
  }
}
