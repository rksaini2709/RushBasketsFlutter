import 'package:flutter/material.dart';
import '../../../../widget/Spacing.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';
import 'HomeCategoryCard.dart';

class HomeCategoryScrollView extends StatelessWidget {
  const HomeCategoryScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {"imageUrl": "asset/icon/Grocery.png", "title": "Groceries"},
      {"imageUrl": "asset/icon/Electronics.png", "title": "Electronics"},
      {"imageUrl": "asset/icon/Fashion.png", "title": "Fashion"},
      {"imageUrl": "asset/icon/Veg.png", "title": "Vegetables"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Categories",
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: HomeCategoryCard(
                  imageUrl: categories[index]["imageUrl"]!,
                  title: categories[index]["title"]!,
                  index: index,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
