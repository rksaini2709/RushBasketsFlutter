import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';
import '../../widget/Location.dart';
import '../../widget/VerticalSpacing.dart';

class YourOrderScreen extends StatelessWidget {
  const YourOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CustomText(
              text: "Rush",
              textSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xffEF8120),
            ),
            CustomText(
              text: "Baskets",
              textSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xff194872),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.notifications_active,
            color: Color(0xffEF8120),
            size: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.favorite,
              color: Color(0xffEF8120),
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 20,
              child: Image.asset(
                "asset/image/Profile.png",
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            const locationWidget(),
            VerticalSpacing(height: 20),
            SizedBox(
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: orangeColor,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: orangeColor,
                  ),
                  hintText: "Search.....",
                  hintStyle: customTextStyle(14, FontWeight.w400, hintTextColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: violetColor),
                  ),
                ),
                onChanged: (value) {
                  // Implement search logic here
                },
              ),
            ),
            VerticalSpacing(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return OrderItemCard(); // Replace with your actual widget
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

class OrderItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: lightVioletColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: violetColor),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset("asset/image/Chips.png"),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Your delivery",
                    textSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Lays Chips Combo Pack",
                    textSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  CustomText(
                    text: "Delivered in 05 minutes",
                    textSize: 8,
                    fontWeight: FontWeight.w700,
                    color: violetColor,
                  ),
                  CustomText(
                    text: "₹105.99",
                    textSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
