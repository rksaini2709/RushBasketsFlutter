// rush_baskets\lib\Cart\CartItemCard.dart

import 'package:flutter/material.dart';
import '../../../widget/IncreDecreMentItem.dart';
import '../../../widget/Spacing.dart';
import '../../../widget/Text.dart';
import '../../../widget/color.dart';

class CartItemCard extends StatelessWidget {
  final int index;

  const CartItemCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpacing(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
            Border.all(color: index % 2 == 0 ? orangeColor : violetColor),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child:
                              // Image.asset(AssetsImages.chips),
                              Image.asset("asset/image/Chips.png")),
                        ),
                        VerticalSpacing(height: 8),
                      ],
                    ),
                    HorizontalSpacing(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: "Patanjali Honey",
                          textSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        const CustomText(
                          text: "(100% pure)",
                          textSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        VerticalSpacing(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFF04),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                            child: CustomText(
                              text: "10% free",
                              textSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            CustomText(
                              text: "₹ 999.00",
                              textSize: 18,
                              fontWeight: FontWeight.w700,
                              color: violetColor,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "₹ 1548.00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        const CustomText(
                          text: "in stock",
                          textSize: 12,
                          fontWeight: FontWeight.w700,
                          color: timeNotificationColor,
                        ),
                        VerticalSpacing(height: 10),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Increment Decrement Item Number
                    const IncreDecreMentItem(),
                    HorizontalSpacing(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6, vertical: 0),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: CustomText(
                              text: "remove",
                              textSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    HorizontalSpacing(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6, vertical: 0),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: CustomText(
                              text: "see more",
                              textSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}