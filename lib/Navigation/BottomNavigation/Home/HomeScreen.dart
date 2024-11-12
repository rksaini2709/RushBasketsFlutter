import 'package:flutter/material.dart';
import '../../../widget/Location.dart';
import '../../../widget/Search.dart';
import '../../../widget/Spacing.dart';
import 'HomeOfferCard.dart';
import 'PopularDeals/PopularDeal.dart';
import 'PreviousOrder/PreviousOrderCard.dart';
import 'TrackCard/TrackOrderCard.dart';
import 'homeScreenCategory/HomeCategoryProductDetails.dart';
import 'homeScreenCategory/HomeCategoryScrollView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // location
              const locationWidget(),
              VerticalSpacing(height: 15),

              // search bar
              const Search(),
              VerticalSpacing(height: 15),

              // offer card CarouselSlider
              HomeOfferCard(),

              // Category single sroll view
              const HomeCategoryScrollView(),
              VerticalSpacing(height: 15),

              // previous order card
              const PreviousOrderCard(),
              VerticalSpacing(height: 15),

              // track order card
              TrackOrderCard(
                orderId: "28292999",
                itemName: "Chips",
                estimatedTime: "30 mins",
                onTrackNow: () {
                  // Track Order action
                },
              ),
              VerticalSpacing(height: 15),

              // "Grocery & Kitchen" category some product
              const HomeCategoryProductDetails(
                title: "Grocery & Kitchen",
                categories: [
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Vegetable & Fruits",
                    "index": 0
                  },
                  {
                    "imageUrl": "asset/image/Chips.png",
                    "subTitle": "Atta, Rice & Dal",
                    "index": 1
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Oil, Ghee & Masala",
                    "index": 2
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Oil, Ghee & Masala",
                    "index": 3
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Oil, Ghee & Masala",
                    "index": 4
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Oil, Ghee & Masala",
                    "index": 5
                  },
                ],
              ),
              const Divider(),

              // "Snacks & Drinks" category some product
              const HomeCategoryProductDetails(
                title: "Snacks & Drinks",
                categories: [
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Chips & Crisps",
                    "index": 0
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Cold Drinks",
                    "index": 1
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 2
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 3
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 4
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 5
                  },
                ],
              ),
              const Divider(),

              // "Beauty & Personal Care" category some product
              const HomeCategoryProductDetails(
                title: "Beauty & Personal Care",
                categories: [
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Chips & Crisps",
                    "index": 0
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Cold Drinks",
                    "index": 1
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 2
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 3
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 4
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 5
                  },
                ],
              ),
              const Divider(),

              // "Health Care Dry Fruits" category some product
              const HomeCategoryProductDetails(
                title: "Health Care Dry Fruits",
                categories: [
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Chips & Crisps",
                    "index": 0
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Cold Drinks",
                    "index": 1
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 2
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 3
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 4
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 5
                  },
                ],
              ),
              const Divider(),

              // "Electronics" category some product
              const HomeCategoryProductDetails(
                title: "Electronics",
                categories: [
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Chips & Crisps",
                    "index": 0
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Cold Drinks",
                    "index": 1
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 2
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 3
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 4
                  },
                  {
                    "imageUrl": "asset/image/Cloth.png",
                    "subTitle": "Fruit Juices",
                    "index": 5
                  },
                ],
              ),
              const Divider(),

              // Popular Deal item
              const PopularDeal(),
            ],
          ),
        ),
      ),
    );
  }
}
