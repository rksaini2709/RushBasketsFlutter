import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Btn.dart';
import 'package:rush_baskets/widget/Text.dart';
import '../widget/Spacing.dart';
import '../widget/color.dart';

class CategoryStoreItem extends StatefulWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final int ratingCount;
  final bool isAddToCart;
  final String imagePath;

  const CategoryStoreItem({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.ratingCount,
    this.isAddToCart = false,
    required this.imagePath,
  });

  @override
  _CategoryStoreItemState createState() => _CategoryStoreItemState();
}

class _CategoryStoreItemState extends State<CategoryStoreItem> {
  bool isFavorite = false;
  bool inCart = false;
  int itemCount = 0;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void addToCart() {
    setState(() {
      inCart = true;
      itemCount = 1;
    });
  }

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      } else {
        inCart = false;
        itemCount = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: violetColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: toggleFavorite,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
            VerticalSpacing(height: 10),
            Center(
              child: Image.asset(
                "asset/image/honey.png",
                height: 100,
                // width: 110,
                fit: BoxFit.contain,
              ),
            ),
            VerticalSpacing(height: 10),
            Center(
              child: CustomText(
                text: widget.title,
                textSize: 18,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child:
              Text(
                widget.oldPrice,
                style: const TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CustomText(
                    text: widget.newPrice,
                    textSize: 18,
                    fontWeight: FontWeight.w800,
                    color: orangeColor,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: "(${widget.ratingCount})",
                        textSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      const Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: inCart
                  ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryBtnWidget(
                    name: "-",
                    width: 42,
                    height: 36,
                    btnTextSize: 20,
                    textColor: Colors.white,
                    btnColor: orangeColor,
                    onTap: decrementItem,
                  ),
                  Text(itemCount.toString(),
                      style: const TextStyle(fontSize: 18)),
                  PrimaryBtnWidget(
                    name: "+",
                    width: 42,
                    height: 36,
                    btnTextSize: 20,
                    textColor: Colors.white,
                    btnColor: orangeColor,
                    onTap: incrementItem,
                  ),
                ],
              )
                  : Center(
                child: PrimaryBtnWidget(
                  name: "Add to cart",
                  width: 150,
                  height: 35,
                  btnTextSize: 14,
                  textColor: whiteColor,
                  btnColor: orangeColor,
                  onTap: addToCart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
