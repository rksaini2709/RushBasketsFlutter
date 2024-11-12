import 'package:flutter/material.dart';
import '../../../../widget/Btn.dart';
import '../../../../widget/Spacing.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';

class TrackOrderCard extends StatelessWidget {
  final String orderId;
  final String itemName;
  final String estimatedTime;
  final VoidCallback onTrackNow;

  const TrackOrderCard({
    super.key,
    required this.orderId,
    required this.itemName,
    required this.estimatedTime,
    required this.onTrackNow,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Track Your Order",
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
        Container(
          decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("asset/image/TrackYourOrder.png"),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: "Order ID : ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                            TextSpan(
                              text: "#$orderId",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: itemName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                            const TextSpan(
                              text: " , estimated time ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                            TextSpan(
                              text: estimatedTime,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      VerticalSpacing(height: 10),
                      PrimaryBtnWidget(
                        textColor: orangeColor,
                        btnColor: whiteColor,
                        name: "Track Now",
                        width: 100,
                        height: 35,
                        onTap: onTrackNow,
                        btnTextSize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
