import 'package:flutter/material.dart';
import '../../../widget/Text.dart';
import '../../../widget/Search.dart';
import '../../../widget/Spacing.dart';
import '../../../widget/color.dart';

class CategoryProductsScreen extends StatefulWidget {
  final String categoryTitle;

  const CategoryProductsScreen({super.key, required this.categoryTitle});

  @override
  _CategoryProductsScreenState createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  int itemCount = 0;
  double totalAmount = 0.0;

  final List<Map<String, dynamic>> items = [
    {
      "title": "Groceries",
      "image": "asset/image/Aata.png",
      "percentageOff": "10%",
      "exPrice": "₹555",
      "currentPrice": "₹500",
      "quantity": "1 kg",
      "time": "2 days left",
      "ratingCount": 4
    },
    {
      "title": "T-shirt",
      "image": "asset/image/Cloth.png",
      "percentageOff": "15%",
      "exPrice": "₹999",
      "currentPrice": "₹849",
      "quantity": "1 piece",
      "time": "10 min left",
      "ratingCount": 4
    },
    // Add more items here...
  ];

  void updateCart(int quantity, double price) {
    setState(() {
      itemCount += quantity;
      totalAmount += quantity * price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: CustomText(
          text: widget.categoryTitle,
          textSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            const Search(),
            VerticalSpacing(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      // Optional: Implement navigation or action
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item["image"],
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          VerticalSpacing(height: 8),
                          Text(
                            item["title"],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          VerticalSpacing(height: 4),
                          Text(
                            item["currentPrice"],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Optional: Cart Summary Button
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: violetColor,
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: itemCount > 0
                    ? () {
                  // Implement Cart Summary Modal
                }
                    : null,
                child: Text(
                  "View Cart (${itemCount} items) - ₹${totalAmount.toStringAsFixed(2)}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
