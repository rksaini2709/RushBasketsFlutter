import 'package:flutter/material.dart';
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
      {"title": "Groceries", "image": "asset/image/honey.png"},
      {"title": "T-shirt", "image": "asset/image/Chips.png"},
      {"title": "Vegetables", "image": "asset/image/Cloth.png"},
      {"title": "Home Theatre", "image": "asset/image/honey.png"},
      {"title": "Electronics", "image": "asset/image/honey.png"},
    ];

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Previous Order",
              textSize: 18,
              fontWeight: FontWeight.w700,
              color: blackColor,
            ),
            Icon(Icons.arrow_forward_ios, size: 14),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.asMap().entries.map((entry) {
              int index = entry.key;
              var item = entry.value;

              return PopularDealCard(
                title: item["title"]!,
                oldPrice: "₹555",
                newPrice: "₹500.99",
                ratingCount: 243,
                imagePath: item["image"]!,
                updateCart: updateCart,
                index: index,
              );
            }).toList(),
          ),
        ),
        if (itemCount > 0)
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: violetColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Items: $itemCount',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Amount: ₹${totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: itemCount > 0 ? () {} : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: itemCount > 0 ? Colors.orange : Colors.grey,
                  ),
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
