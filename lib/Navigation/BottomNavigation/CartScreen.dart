//rush_baskets\lib\Navigation\BottomNavigation\CartScreen.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Cart Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}