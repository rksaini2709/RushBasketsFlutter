import 'package:flutter/material.dart';
import 'package:rush_baskets/Buy/BillBottomSheet.dart';
import 'package:rush_baskets/widget/Search.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../../Location/SelectAddress.dart';
import '../../../widget/Btn.dart';
import '../../../widget/Text.dart';
import 'CategoryDetails.dart';

class CategoryStoreScreen extends StatefulWidget {
  const CategoryStoreScreen({super.key});

  @override
  _CategoryStoreScreenState createState() => _CategoryStoreScreenState();
}

class _CategoryStoreScreenState extends State<CategoryStoreScreen> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(
          text: "Groceries",
          textSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            const Search(),
            VerticalSpacing(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CategoryDetails(
                      title: "Groceries",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      updateCart: updateCart,
                    ),
                    VerticalSpacing(height: 10),
                    CategoryDetails(
                      title: "T-shirt",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      buyNow: true,
                      updateCart: updateCart,
                    ),
                    VerticalSpacing(height: 10),
                    CategoryDetails(
                      title: "Veg",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      updateCart: updateCart,
                    ),
                    VerticalSpacing(height: 10),
                    CategoryDetails(
                      title: "Home Theatre",
                      oldPrice: "₹ 555",
                      newPrice: "₹ 500.99",
                      ratingCount: 243,
                      buyNow: true,
                      updateCart: updateCart,
                    ),
                    VerticalSpacing(height: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Pass the itemCount and totalAmount to BillBottomSheet
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
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
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: violetColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Items: ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: itemCount.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'Amount: ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: '₹ ${totalAmount.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: PrimaryBtnWidget(
                      name: "Buy Now",
                      width: double.infinity,
                      height: 40,
                      btnTextSize: 15,
                      textColor: Colors.white,
                      btnColor: itemCount > 0 ? orangeColor : Colors.grey,
                      onTap: itemCount > 0
                          ? () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return const SelectAddress();
                          },
                        );
                      }
                          : null,
                    ),
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

