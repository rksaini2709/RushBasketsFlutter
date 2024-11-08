import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/ItemView.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/ViewMore.dart';
import '../widget/Btn.dart';
import '../widget/IncreDecreMentItem.dart';
import '../widget/color.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Item Image
        Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemView(),
          const Divider(),
          // Item Name and Rating
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                CustomText(
                  text: "Patanjali Honey ",
                  textSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                CustomText(
                  text: "(100% pure)",
                  textSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomText(
              text: "in the stock",
              textSize: 13,
              fontWeight: FontWeight.w700,
              color: timeNotificationColor,
            ),
          ),

          // Price Details
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CustomText(
                      textSize: 20,
                      text: '₹999 ',
                      fontWeight: FontWeight.bold,
                      color: orangeColor,
                    ),
                    const Text(
                      '₹1499',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: CustomText(
                          text: '10% off',
                          textSize: 14,
                          fontWeight: FontWeight.bold,
                          color: timeNotificationColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const IncreDecreMentItem(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: 'Protein: 0.06g',
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                CustomText(
                    text: 'Energy: 63.84kcal',
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                CustomText(
                    text: 'Sugars: 17.25g',
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
                CustomText(
                    text: 'Total dietary: 0.04g',
                    textSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
