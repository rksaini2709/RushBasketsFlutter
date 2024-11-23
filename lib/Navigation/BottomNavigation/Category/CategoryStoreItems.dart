import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Btn.dart';
import 'package:rush_baskets/widget/Text.dart';
import '../../../widget/Spacing.dart';
import '../../../widget/color.dart';

class CategoryStoreItems extends StatefulWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final int ratingCount;
  final String imagePath;
  final Function(int, double) updateCart;
  final int index;
  final String percentageOff;
  final String quantity;
  final String timeLeft;

  const CategoryStoreItems({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.ratingCount,
    required this.imagePath,
    required this.updateCart,
    required this.index,
    required this.percentageOff,
    required this.quantity,
    required this.timeLeft,
  });

  @override
  _CategoryStoreItemsState createState() => _CategoryStoreItemsState();
}

class _CategoryStoreItemsState extends State<CategoryStoreItems> {
  int itemCount = 0;
  bool isFavorited = false;
  bool inCart = false;

  // Toggles the favorite status
  void toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
  }

  // Adds the item to the cart
  void buy() {
    setState(() {
      inCart = true;
      itemCount = 1;
    });
    widget.updateCart(itemCount, parsePrice(widget.newPrice));
  }

  // Increments the item count
  void incrementItem() {
    setState(() {
      itemCount++;
    });
    widget.updateCart(1, parsePrice(widget.newPrice));
  }

  // Decrements the item count and removes from cart if count reaches 0
  void decrementItem() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
      widget.updateCart(-1, parsePrice(widget.newPrice));
    }

    if (itemCount == 0) {
      setState(() {
        inCart = false;
      });
    }
  }

  // Parses the price string into a double value
  double parsePrice(String price) {
    return double.parse(price.replaceAll('₹', '').replaceAll(',', ''));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      // height: 235,
      margin: const EdgeInsets.fromLTRB(0, 10, 10, 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.index % 2 == 0 ? orangeColor : violetColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Favorite Icon
          Stack(
            alignment: Alignment.topRight,
            children: [
              Center(
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: isFavorited ? Colors.red : Colors.black,
                ),
                onPressed: toggleFavorite,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),

          // Product Title
          Center(
            child: CustomText(
              text: widget.title,
              textSize: 18,
              fontWeight: FontWeight.w800,
              color: blackColor,
            ),
          ),

          // New Price and Rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CustomText(
                  text: widget.newPrice,
                  textSize: 20,
                  fontWeight: FontWeight.w800,
                  color: violetColor,
                ),
                const Spacer(),
                Row(
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

          // Old Price with Strike-through
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  widget.oldPrice,
                  style:
                  const TextStyle(decoration: TextDecoration.lineThrough),
                ),
                HorizontalSpacing(width: 5),
                CustomText(
                    text: widget.percentageOff,
                    textSize: 12,
                    fontWeight: FontWeight.w600,
                    color: hintTextColor),
                const CustomText(
                    text: "off",
                    textSize: 12,
                    fontWeight: FontWeight.w600,
                    color: hintTextColor)
              ],
            ),
          ),

          // quantity of product
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const CustomText(
                    text: "quantity : ",
                    textSize: 15,
                    fontWeight: FontWeight.w800,
                    color: blackColor),
                CustomText(
                    text: widget.quantity,
                    textSize: 15,
                    fontWeight: FontWeight.w800,
                    color: violetColor),
              ],
            ),
          ),

          // time period of your order
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
                text: widget.timeLeft,
                textSize: 15,
                fontWeight: FontWeight.w500,
                color: timeNotificationColor),
          ),

          // Add to Cart or Quantity Control
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: inCart
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Decrement Button
                PrimaryBtnWidget(
                  name: "-",
                  width: 42,
                  height: 36,
                  btnTextSize: 20,
                  textColor: Colors.white,
                  btnColor: orangeColor,
                  onTap: decrementItem,
                ),

                // Item Count
                Text(
                  itemCount.toString(),
                  style: const TextStyle(fontSize: 18),
                ),

                // Increment Button
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
              // Add to Cart Button
              child: PrimaryBtnWidget(
                name: "Add to Cart",
                width: 150,
                height: 35,
                btnTextSize: 14,
                textColor: whiteColor,
                btnColor: orangeColor,
                onTap: buy,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
