import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';

import '../widget/Spacing.dart';
import '../widget/color.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: violetColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: "Buy details", textSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
                VerticalSpacing(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.shopping_bag),
                        HorizontalSpacing(width: 5),
                        const CustomText(text: "Items total", textSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                        HorizontalSpacing(width: 5),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                            child: CustomText(
                              text: "save ₹ 76",
                              textSize: 12,
                              fontWeight: FontWeight.bold,
                              color: timeNotificationColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        // CustomText(text: "₹ 160.00", textSize: 8, fontWeight: FontWeight.w400, color: Colors.black),
                        Text(
                          "₹ 160.00",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 5),
                        CustomText(text: "₹ 152.00", textSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.delivery_dining),
                        HorizontalSpacing(width: 5),
                        const CustomText(text: "Delivery charge", textSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "₹ 25",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 5),
                        CustomText(text: "free", textSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(color: violetColor, thickness: 2),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Grand total", textSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                    CustomText(text: "₹501.99", textSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Your total savings", textSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                    CustomText(text: "+57.00", textSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
