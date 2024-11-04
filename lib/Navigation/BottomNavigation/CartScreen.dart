// rush_baskets\lib\Cart\CartItemCard.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Cart/CartItemCard.dart';
import 'package:rush_baskets/Cart/SingleItem.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../widget/Btn.dart';
import '../../widget/Location.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                  ),
                ),
                VerticalSpacing(height: 10),
              ],
            ),
          ),
          const Divider(),
          // Scrollable area containing item list and bill details
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Clear all items",
                        style: customTextStyle(12, FontWeight.w800, violetColor),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SingleItem()),
                            );
                          },
                          child: CartItemCard(index: index),
                        );
                      },
                    ),
                    VerticalSpacing(height: 10),
                    // Bill details section
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: violetColor, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bill details",
                                  style: customTextStyle(14, FontWeight.w700, Colors.black),
                                ),
                                VerticalSpacing(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.shopping_bag),
                                        HorizontalSpacing(width: 5),
                                        Text(
                                          "Items total",
                                          style: customTextStyle(10, FontWeight.w400, Colors.black),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xffFFFF04),
                                              borderRadius: BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                                            child: Text(
                                              "Saved ₹76",
                                              style: customTextStyle(8, FontWeight.w400, Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "₹ 160.00",
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "₹ 152.00",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.delivery_dining),
                                        HorizontalSpacing(width: 5),
                                        Text(
                                          "Delivery charge",
                                          style: customTextStyle(10, FontWeight.w400, Colors.black),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "₹ 25",
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "FREE",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Divider(color: violetColor, thickness: 2),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Grand total",
                                      style: customTextStyle(12, FontWeight.w700, Colors.black),
                                    ),
                                    Text(
                                      "₹501.99",
                                      style: customTextStyle(12, FontWeight.w700, Colors.black),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Your total savings",
                                      style: customTextStyle(12, FontWeight.w700, Colors.black),
                                    ),
                                    Text(
                                      "+57.00",
                                      style: customTextStyle(12, FontWeight.w700, Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(height: 20),
                    PrimaryBtnWidget(
                      name: "Buy Now",
                      width: double.infinity,
                      height: 40,
                      btnTextSize: 15,
                      textColor: Colors.white,
                      btnColor: orangeColor,
                      onTap: () {},
                    ),
                    VerticalSpacing(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}
