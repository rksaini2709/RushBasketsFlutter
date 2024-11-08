// rush_baskets\lib\Navigation\BottomNavigation\OrdersScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Order/TrackOrderScreen.dart';
import 'package:rush_baskets/widget/Search.dart';

import '../../Order/OrderItemCard.dart';
import '../../widget/Location.dart';
import '../../widget/Spacing.dart';
import '../../widget/color.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          children: [
            const locationWidget(),
            VerticalSpacing(height: 20),

            // search Widget
            const Search(),
            VerticalSpacing(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrackOrderScreen()),
                      );
                    },
                    child: OrderItemCard(index: index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}
