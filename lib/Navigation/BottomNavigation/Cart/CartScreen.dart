import 'package:flutter/material.dart';
import 'package:rush_baskets/Buy/BuyScreen.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../../Buy/BillDetails.dart';
import '../../../Location/SelectAddress.dart';
import '../../../widget/Btn.dart';
import '../../../widget/Location.dart';
import '../../../widget/Search.dart';
import 'CartItemCard.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [

                // Location
                const locationWidget(),
                VerticalSpacing(height: 15),

                // Search Bar
                const Search(),
                VerticalSpacing(height: 15),

                // All cart product Clear
                const Align(
                  alignment: Alignment.topRight,
                  child: CustomText(
                    text: "Clear all items",
                    textSize: 12,
                    fontWeight: FontWeight.w800,
                    color: violetColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [

                    // List of Cart product
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BuyScreen()),
                            );
                          },

                          // Cart Product Card
                          child: CartItemCard(index: index),
                        );
                      },
                    ),
                    VerticalSpacing(height: 10),

                    // Bill details section
                    const BillDetails(),
                    VerticalSpacing(height: 20),
                    PrimaryBtnWidget(
                      name: "Buy Now",
                      width: double.infinity,
                      height: 40,
                      btnTextSize: 15,
                      textColor: Colors.white,
                      btnColor: orangeColor,
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return const SingleChildScrollView(child: SelectAddress());
                          },
                        );
                      },
                    ),
                    VerticalSpacing(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
