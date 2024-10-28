// rush_baskets\lib\Order\OrderItemCard.dart

import 'package:flutter/material.dart';

import '../widget/Text.dart';
import '../widget/color.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: lightVioletColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: violetColor),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset("asset/image/Chips.png"),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Your delivery",
                    textSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Lays Chips Combo Pack",
                    textSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Delivered in 05 minutes",
                    textSize: 8,
                    fontWeight: FontWeight.w700,
                    color: violetColor,
                  ),
                  CustomText(
                    text: "₹105.99",
                    textSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}