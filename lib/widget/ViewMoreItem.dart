import 'package:flutter/material.dart';
import 'ProductCard.dart';

class ViewMoreItem extends StatelessWidget {
  const ViewMoreItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(
                imageUrl: 'asset/image/Chips.png',
                title: 'Kitchenware',
                price: '₹ 1599',
                rating: '(243)',
              ),
              ProductCard(
                imageUrl: 'asset/image/Chips.png',
                title: 'Spoon Set',
                price: '₹ 159.99',
                rating: '(243)',
              ),
              ProductCard(
                imageUrl: 'asset/image/Chips.png',
                title: 'Cups',
                price: '₹ 150',
                rating: '(243)',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
