import 'package:flutter/material.dart';
import 'package:rush_baskets/Location/SelectAddress.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/Text.dart';

import '../Navigation/BottomNavigation/Cart/SingleItemScreen.dart';
import '../Navigation/NavigationBottom.dart';
import '../widget/Btn.dart';
import '../widget/ViewMoreItem.dart';
import '../widget/color.dart';
import 'BillDetails.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key});

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(
          text: "Buy Now",
          textSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationBottomScreen(initialIndex: 2),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [

                    // Single Item Card
                    const SingleItem(),
                    VerticalSpacing(height: 10),

                    // You May Also Like Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: 'You might also like',
                            textSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ViewMoreItem(),
                                ),
                              );
                            },
                            child: const CustomText(
                              text: 'view more >',
                              textSize: 16,
                              fontWeight: FontWeight.w800,
                              color: violetColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // View more item
                    const ViewMoreItem(),
                    VerticalSpacing(height: 8),

                    // Bill Slip
                    const BillDetails(),
                    VerticalSpacing(height: 10),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
            child: PrimaryBtnWidget(
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
                    return const SelectAddress();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

