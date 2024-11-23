// rush_baskets\lib\Navigation\BottomNavigation\Category\CategoriesScreen.dart
// category Screen

import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Search.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import '../../../widget/Location.dart';
import 'CategoryCard.dart';
import 'CategoryProductsScreen.dart';
import 'CategoryStoreScreen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // List of categories with image URLs and titles
    final categories = [
      {"imageUrl": "asset/image/Kitchen.png", "title": "Kitchen"},
      {"imageUrl": "asset/image/VegBasket.png", "title": "Veg"},
      {"imageUrl": "asset/image/Cloth.png", "title": "Fashion"},
      {"imageUrl": "asset/image/Electronic.png", "title": "Electronic"},
      {"imageUrl": "asset/image/DailyUseProduct.png", "title": "Daily Use Product"},
      {"imageUrl": "asset/image/ElectronicToys.png", "title": "Electronic Toys"},
      {"imageUrl": "asset/image/GYMDietProduct.png", "title": "GYM Diet Product"},
      {"imageUrl": "asset/image/Drink.png", "title": "Drinks"},
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          children: [

            // Location Widget
            const locationWidget(),
            VerticalSpacing(height: 15),

            //  Search Bar
            const Search(),
            VerticalSpacing(height: 15),

            // Categories Card
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(

                          // Category Store Screen that's meaning where all product of categories related
                          builder: (context) => CategoryProductsScreen(
                            categoryTitle: categories[index]["title"]!,
                          ),
                        ),
                      );
                    },

                    // Categories Card
                    child: CategoryCard(
                      imageUrl: categories[index]["imageUrl"]!,
                      title: categories[index]["title"]!,
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
