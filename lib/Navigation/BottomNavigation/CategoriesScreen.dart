import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Search.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import '../../Category/CategoryCard.dart';
import '../../Category/CategoryStore.dart';
import '../../widget/Location.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with image URLs and titles
    final categories = [
      {"imageUrl": "asset/image/honey.png", "title": "Kitchen"},
      {"imageUrl": "asset/image/Chips.png", "title": "Veg"},
      {"imageUrl": "asset/image/Cloth.png", "title": "Fashion"},
      {"imageUrl": "asset/image/honey.png", "title": "Electronic"},
      {"imageUrl": "asset/image/honey.png", "title": "Daily Use Product"},
      {"imageUrl": "asset/image/Chips.png", "title": "Electronic Toys"},
      {"imageUrl": "asset/image/Chips.png", "title": "GYM Diet Product"},
      {"imageUrl": "asset/image/honey.png", "title": "Drinks"},
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          children: [
            const locationWidget(),
            VerticalSpacing(height: 20),
            const Search(),
            VerticalSpacing(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigate to CategoryStore screen on tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryStore(),
                        ),
                      );
                    },
                    child: CategoryCard(
                      imageUrl: categories[index]["imageUrl"]!,
                      title: categories[index]["title"]!,
                      index: index,
                    ),
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
