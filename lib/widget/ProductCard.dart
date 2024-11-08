import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';
import 'Spacing.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imageUrl,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  VerticalSpacing(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const CustomText(
                    text: "( 5% off )",
                    textSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: price,
                    textSize: 16,
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: rating,
                        textSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned Add Icon (Top-right corner)
          const Positioned(
            right: -6,
            top: -6,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 12,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

