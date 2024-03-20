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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'View your Orders',
                  textAlign: TextAlign.center,
                ),
                Icon(Icons.list),
              ],
            ),
          ),
          for (int i = 0; i < 20; i++) ...[
            Container(
              height: 70,
              color: Colors.amber[600],
              child: const Center(child: Text('Order')),
            ),
            const Divider(
              height: 6,
              color: Colors.black,
            )
          ]
        ]))));
  }
}
