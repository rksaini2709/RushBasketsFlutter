// rush_baskets\lib\Navigation\DrawerNavigation\CollectedCouponsScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Navigation/NavigationBottom.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../widget/Images.dart';
import '../../widget/Spacing.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: orangeColor,
          title: const CustomText(
              text: "Coupon",
              textSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white),
          leadingWidth: 30,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const NavigationBottomScreen(
                          initialIndex: 0)));
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
        ),

        body:

        // Coupon Card List
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
              child: Container(
                // margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: index % 2 == 0 ? orangeColor : violetColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          Image.asset("asset/image/Headphone.png")
                      ),
                      HorizontalSpacing(width: 20),
                      const Divider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                              text: "JBL Headphone",
                              textSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          Row(
                            children: [
                              const CustomText(
                                  text: "₹999",
                                  textSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                              HorizontalSpacing(width: 10),
                              const Text(
                                "₹4,999",
                                style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          const CustomText(
                              text: "Expire in 05 days",
                              textSize: 10,
                              fontWeight: FontWeight.w500,
                              color: timeNotificationColor),
                          VerticalSpacing(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: darkBlueColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: CustomText(
                                  text: "Copy Coupan Code",
                                  textSize: 10,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}