// rush_baskets\lib\Navigation\BottomNavigation\Home\PreviousOrder\PreviousOrderCardDetails.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Home/PreviousOrder/PreviousOrderCardImages.dart';

import '../../../../Location/SelectAddress.dart';
import '../../../../widget/Spacing.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';

class PreviousOrderCardDetails extends StatelessWidget {
  final String orderId;
  final String orderDate;
  final double totalAmount;
  final List<String> imageUrls;
  final VoidCallback onOrderAgain;

  const PreviousOrderCardDetails({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.totalAmount,
    required this.imageUrls,
    required this.onOrderAgain,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Delivered",
          textSize: 18,
          fontWeight: FontWeight.bold,
          color: violetColor,
        ),
        VerticalSpacing(height: 2),
        CustomText(
          text: "On $orderDate",
          textSize: 12,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        VerticalSpacing(height: 6),

        // previous order product's images collection
        PreviousOrderCardImages(imageUrls: imageUrls),

        // order ID nd total ammount... order again btn
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Order ID : ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                      TextSpan(
                        text: "#$orderId",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: violetColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Total amount: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      TextSpan(
                        text: "₹ $totalAmount",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: violetColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0)),
                  ),
                  builder: (BuildContext context) =>

                      // choose your entire address
                      const SelectAddress(),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: whiteColor,
                backgroundColor: orangeColor,
                minimumSize: const Size(100, 35),
              ),
              child: const Text(
                "Buy Again",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
