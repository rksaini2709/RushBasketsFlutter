// rush_baskets\lib\Navigation\BottomNavigation\OrdersScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Order/TrackOrderScreen.dart';

import '../../Order/OrderItemCard.dart';
import '../../widget/Location.dart';
import '../../widget/VerticalSpacing.dart';
import '../../widget/color.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            const locationWidget(),
            VerticalSpacing(height: 20),
            SizedBox(
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: orangeColor,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: orangeColor,
                  ),
                  hintText: "Search.....",
                  hintStyle:
                      customTextStyle(14, FontWeight.w400, hintTextColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: violetColor),
                  ),
                ),
                onChanged: (value) {
                  // Implement search logic here
                },
              ),
            ),
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
                    child: const OrderItemCard(),
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
