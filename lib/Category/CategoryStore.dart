// rush_baskets\lib\Category\CategoryStore.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Category/CategoryDetails.dart';
import 'package:rush_baskets/widget/Search.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/color.dart';

import '../Location/SelectAddress.dart';
import '../widget/Btn.dart';
import '../widget/Text.dart';

class CategoryStore extends StatelessWidget {
  const CategoryStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(
          text: "Groceries",
          textSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [

            // Search Widget
            const Search(),
            VerticalSpacing(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CategoryDetails(
                      title: "Groceries",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                    ),
                    VerticalSpacing(height: 10),
                    const CategoryDetails(
                      title: "T-shirt",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      isAddToCart: true,
                    ),
                    VerticalSpacing(height: 10),
                    const CategoryDetails(
                      title: "Veg",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                    ),
                    VerticalSpacing(height: 10),
                    const CategoryDetails(
                      title: "Home Theatre",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      isAddToCart: true,
                    ),
                    VerticalSpacing(height: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
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
      ),
    );
  }
}