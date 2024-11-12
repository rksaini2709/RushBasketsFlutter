import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

class HomeCategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int index;

  const HomeCategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.index
  });

  @override
  Widget build(BuildContext context,) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? orangeColor : violetColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 50,
            width: 50,
          ),
          const SizedBox(height: 8),
          CustomText(
            text: title,
            textSize: 15,
            fontWeight: FontWeight.w700,
            color: whiteColor,
          ),
        ],
      ),
    );
  }
}
