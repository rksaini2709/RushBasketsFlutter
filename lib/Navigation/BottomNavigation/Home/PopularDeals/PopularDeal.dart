import 'package:flutter/material.dart';
import 'package:rush_baskets/Buy/BillBottomSheet.dart';
import '../../../../Location/SelectAddress.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';
import 'PopularDealCard.dart';

class PopularDeal extends StatefulWidget {
  const PopularDeal({super.key});

  @override
  State<PopularDeal> createState() => _PopularDealState();
}

class _PopularDealState extends State<PopularDeal> {
  int itemCount = 0;
  double totalAmount = 0.0;

  void updateCart(int quantity, double price) {
    setState(() {
      itemCount += quantity;
      totalAmount += quantity * price;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "title": "Groceries",
        "image": "asset/image/Aata.png",
        "percentageOff": "10%",
        "ex-Price": "₹555",
        "currentPrice": "₹500",
        "Quantity": "1 kg",
        "time": "2 days left",
        "ratingCount" : "4"
      },
      {
        "title": "T-shirt",
        "image": "asset/image/Cloth.png",
        "percentageOff": "15%",
        "ex-Price": "₹999",
        "currentPrice": "₹849",
        "Quantity": "1 piece",
        "time": "10 mint left",
        "ratingCount" : "4"
      },
      {
        "title": "Vegetables",
        "image": "asset/image/VegBasket.png",
        "percentageOff": "20%",
        "ex-Price": "₹250",
        "currentPrice": "₹200",
        "Quantity": "5 kg",
        "time": "10 mint left",
        "ratingCount" : "4"
      },
      {
        "title": "Headphone",
        "image": "asset/image/Headphone.png",
        "percentageOff": "30%",
        "ex-Price": "₹1999",
        "currentPrice": "₹1399",
        "Quantity": "1 unit",
        "time": "10 mint left",
        "ratingCount" : "3"
      },
      {
        "title": "Honey",
        "image": "asset/image/honey.png",
        "percentageOff": "25%",
        "ex-Price": "₹500",
        "currentPrice": "₹375",
        "Quantity": "500 g",
        "time": "10 mint left",
        "ratingCount" : "3"
      },
      {
        "title": "Milk",
        "image": "asset/image/Milk.png",
        "percentageOff": "5%",
        "ex-Price": "₹60",
        "currentPrice": "₹57",
        "Quantity": "1 liter",
        "time": "10 mint left",
        "ratingCount" : "1"
      },
      {
        "title": "Eggs",
        "image": "asset/image/Eggs.png",
        "percentageOff": "12%",
        "ex-Price": "₹120",
        "currentPrice": "₹105",
        "Quantity": "1 dozen",
        "time": "10 mint left",
        "ratingCount" : "5"
      },
      {
        "title": "Rice",
        "image": "asset/image/Rice.png",
        "percentageOff": "8%",
        "ex-Price": "₹800",
        "currentPrice": "₹736",
        "Quantity": "10 kg",
        "time": "10 mint left",
        "ratingCount" : "3"
      },
      {
        "title": "Cooking Oil",
        "image": "asset/image/Oil.png",
        "percentageOff": "10%",
        "ex-Price": "₹1500",
        "currentPrice": "₹1350",
        "Quantity": "5 liters",
        "time": "10 mint left",
        "ratingCount" : "4",
      },
      {
        "title": "Shoes",
        "image": "asset/image/Shoes.png",
        "percentageOff": "18%",
        "ex-Price": "₹2000",
        "currentPrice": "₹1640",
        "Quantity": "1 pair",
        "time": "10 mint left",
        "ratingCount" : "3"
      },
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Popular Deal",
                textSize: 18,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
              Icon(Icons.arrow_forward_ios, size: 14),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: items.map((item) {
                return PopularDealCard(
                  title: item["title"]!,
                  oldPrice: item["ex-Price"]!,
                  newPrice: item["currentPrice"]!,
                  ratingCount: int.parse(item["ratingCount"]!),
                  imagePath: item["image"]!,
                  updateCart: updateCart,
                  index: items.indexOf(item),
                  percentageOff: item["percentageOff"]!,
                  quantity: item["Quantity"]!,
                  timeLeft: item["time"]!,
                );

              }).toList(),
            ),
          ),
        ),

        // show item and amount details after add cart any product
        if (itemCount > 0)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15.0)),
                        ),
                        builder: (BuildContext context) {
                          return BillBottomSheet(
                            itemCount: itemCount,
                            totalAmount: totalAmount,
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: violetColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Items: $itemCount',
                            textSize: 16,
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                          CustomText(
                            text: 'Amount: ₹${totalAmount.toStringAsFixed(2)}',
                            textSize: 16,
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: itemCount > 0
                        ? () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15.0)),
                        ),
                        builder: (BuildContext context) =>
                        const SelectAddress(),
                      );
                    }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      itemCount > 0 ? Colors.orange : Colors.grey,
                    ),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}