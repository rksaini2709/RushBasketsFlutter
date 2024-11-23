import 'package:flutter/material.dart';

import '../../../widget/Location.dart';
import '../../../widget/Search.dart';
import '../../../widget/Spacing.dart';
import 'HomeCategoryScroll/HomeCategoryScrollView.dart';
import 'HomeOfferCard.dart';
import 'PopularDeals/PopularDeal.dart';
import 'PreviousOrder/PreviousOrderCard.dart';
import 'TrackCard/TrackOrderCard.dart';
import 'homeScreenCategoryProduct/HomeCategoryProductDetails.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location widget
              const locationWidget(),
              VerticalSpacing(height: 15),

              // Search bar
              const Search(),
              VerticalSpacing(height: 15),

              // Offer card CarouselSlider
              HomeOfferCard(),

              // Category scroll view
              const HomeCategoryScrollView(),
              VerticalSpacing(height: 15),

              // Previous order card
              const PreviousOrderCard(),
              VerticalSpacing(height: 15),

              // Track order card
              TrackOrderCard(
                orderId: "28292999",
                itemName: "Chips",
                estimatedTime: "30 mins",
                onTrackNow: () {
                  // Track Order action
                },
              ),

              // "Grocery & Kitchen" category product
              const HomeCategoryProductDetails(
                title: "Grocery & Kitchen",
                categories: [
                  {"imageUrl": "asset/image/VegBasket.png", "subTitle": "Vegetable & Fruits"},
                  {"imageUrl": "asset/image/Aata.png", "subTitle": "Atta, Rice & Dal"},
                  {"imageUrl": "asset/image/Oil.png", "subTitle": "Oil, Ghee & Masala"},
                  {"imageUrl": "asset/image/Bread.png", "subTitle": "Bread & Dairy"},
                  {"imageUrl": "asset/image/biscuit.png", "subTitle": "Bakery & Biscuit"},
                  {"imageUrl": "asset/image/DryFruits.png", "subTitle": "Dry Fruits"},
                ],
              ),
              const Divider(),

              // "Snacks & Drinks" category product
              const HomeCategoryProductDetails(
                title: "Snacks & Drinks",
                categories: [
                  {"imageUrl": "asset/image/instant_food.png", "subTitle": "Instant Food"},
                  {"imageUrl": "asset/image/Chips.png", "subTitle": "Chips"},
                  {"imageUrl": "asset/image/Chocolate.png", "subTitle": "Choclates"},
                  {"imageUrl": "asset/image/Drink.png", "subTitle": "Drinks & Juices"},
                  {"imageUrl": "asset/image/Namkeen.png", "subTitle": "Namkeen"},
                  {"imageUrl": "asset/image/tea.png", "subTitle": "Tea, Coffe & Milk Drinks"},
                ],
              ),
              const Divider(),

              // "Beauty & Personal Care" category product
              const HomeCategoryProductDetails(
                title: "Beauty & Personal Care",
                categories: [
                  {"imageUrl": "asset/image/MakeUp.png", "subTitle": "Makeup"},
                  {"imageUrl": "asset/image/Dove.png", "subTitle": "Dove"},
                  {"imageUrl": "asset/image/FaceWash.png", "subTitle": "FaceWash"},
                  {"imageUrl": "asset/image/Sampoo.png", "subTitle": "Shampoo"},
                  {"imageUrl": "asset/image/Perfume.png", "subTitle": "Perfume"},
                  {"imageUrl": "asset/image/BodyLotion.png", "subTitle": "Body Lotion"},
                ],
              ),
              const Divider(),

              // "Health Care Dry Fruits" category product
              const HomeCategoryProductDetails(
                title: "Health Care Dry Fruits",
                categories: [
                  {"imageUrl": "asset/image/CashewNut.png", "subTitle": "cashew nut"},
                  {"imageUrl": "asset/image/Walnuts.png", "subTitle": "Walnuts"},
                  {"imageUrl": "asset/image/Almonds.png", "subTitle": "Almonds"},
                  {"imageUrl": "asset/image/Dates.png", "subTitle": "Dates"},
                  {"imageUrl": "asset/image/Perfume.png", "subTitle": "Perfume"},
                  {"imageUrl": "asset/image/BodyLotion.png", "subTitle": "Body Lotion"},
                ],
              ),
              const Divider(),

              // "Electronics" category product
              const HomeCategoryProductDetails(
                title: "Health Care Dry Fruits",
                categories: [
                  {"imageUrl": "asset/image/Headphone.png", "subTitle": "HeadPhone"},
                  {"imageUrl": "asset/image/Speaker.png", "subTitle": "Loudspeaker"},
                  {"imageUrl": "asset/image/Computer.png", "subTitle": "Mouse & KeyBoard"},
                  {"imageUrl": "asset/image/SmartWatch.png", "subTitle": "Smart Watch"},
                  {"imageUrl": "asset/image/VideoGame.png", "subTitle": "Video Games"},
                  {"imageUrl": "asset/image/Charger.png", "subTitle": "Charger"},
                ],
              ),
              const Divider(),

              // Popular deals
              const PopularDeal(),
            ],
          ),
        ),
      ),
    );
  }
}
