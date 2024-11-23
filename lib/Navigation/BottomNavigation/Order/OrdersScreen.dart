// rush_baskets\lib\Navigation\BottomNavigation\OrdersScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Search.dart';

import '../../../widget/Location.dart';
import '../../../widget/Spacing.dart';
import 'OrderProductCard.dart';
import 'TrackOrderScreen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(
          children: [
            // Location widget
            const locationWidget(),
            VerticalSpacing(height: 15),

            // search Widget
            const Search(),
            VerticalSpacing(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>

                                // Track your order ( Navigation )
                                const TrackOrderScreen()),
                      );
                    },
                    child:

                        // Ordered Product List ( call widget Card)
                        OrderProductCard(index: index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
