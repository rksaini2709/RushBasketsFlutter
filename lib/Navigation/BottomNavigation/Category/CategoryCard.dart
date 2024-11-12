import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../../widget/Text.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int index;

  const CategoryCard({super.key, required this.imageUrl, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          // color: orangeColor,
          border: Border.all(color: index % 2 == 0 ? orangeColor : violetColor),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 5),
            CustomText(text: title, textSize: 20, fontWeight: FontWeight.w700, color: Colors.black)
          ],
        ),
      ),
    );
  }
}