// rush_baskets\lib\Navigation\BottomNavigation\Home\PreviousOrderCard.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Home/PreviousOrder/PreviousOrderCardDetails.dart';

import '../../../../widget/Spacing.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';

class PreviousOrderCard extends StatelessWidget {
  const PreviousOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Previous Order",
              textSize: 18,
              fontWeight: FontWeight.w700,
              color: blackColor,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
        VerticalSpacing(height: 10),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: PreviousOrderCardDetails(
                    orderId: "28292999",
                    orderDate: "Wed, 27 Jul 2022",
                    totalAmount: 123.99,
                    imageUrls: const [
                      "asset/image/Cloth.png",
                      "asset/image/Cloth.png",
                      "asset/image/Cloth.png",
                      "asset/image/Cloth.png",
                      "asset/image/Cloth.png",
                    ],
                    onOrderAgain: () {
                      // Implement order again functionality here
                    },
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: violetColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: const RotatedBox(
                  quarterTurns: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: CustomText(
                      text: "Order Again & Get Flat 10% OFF",
                      textSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}