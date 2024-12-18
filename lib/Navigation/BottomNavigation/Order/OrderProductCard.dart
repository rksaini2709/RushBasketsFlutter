// rush_baskets\lib\Order\OrderProductCard.dart

import 'package:flutter/material.dart';

import '../../../widget/Spacing.dart';
import '../../../widget/Text.dart';
import '../../../widget/color.dart';

class OrderProductCard extends StatelessWidget {
  final int index;

  const OrderProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          // color: lightOrangeColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: index % 2 == 0 ? orangeColor : violetColor),
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
              child:
              // Image.asset(AssetsImages.chips),
              Image.asset("asset/image/Chips.png"),
            ),
            HorizontalSpacing(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Your delivery",
                    textSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  const CustomText(
                    text: "Lays Chips Combo Pack",
                    textSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  VerticalSpacing(height: 5),
                  const CustomText(
                    text: "Delivered in 05 minutes",
                    textSize: 13,
                    fontWeight: FontWeight.w700,
                    color: timeNotificationColor,
                  ),
                  VerticalSpacing(height: 5),
                  const CustomText(
                    text: "₹105.99",
                    textSize: 20,
                    fontWeight: FontWeight.w700,
                    color: violetColor,
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