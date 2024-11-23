import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/color.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // gradient: const LinearGradient(
        //   colors: [whiteColor, orangeColor],
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
        color: Colors.white,
        // border: Border.all(
        //   color: blackColor
        // ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Image Section
          Expanded(
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),

          // Title Section
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
