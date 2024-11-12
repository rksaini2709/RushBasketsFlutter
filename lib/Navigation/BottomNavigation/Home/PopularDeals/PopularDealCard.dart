import 'package:flutter/material.dart';
import '../../../../widget/Btn.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';

class PopularDealCard extends StatefulWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final int ratingCount;
  final String imagePath;
  final Function(int, double) updateCart;
  final int index;

  const PopularDealCard({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.ratingCount,
    required this.imagePath,
    required this.updateCart,
    required this.index,
  });

  @override
  _PopularDealCardState createState() => _PopularDealCardState();
}

class _PopularDealCardState extends State<PopularDealCard> {
  int itemCount = 0;
  bool isFavorited = false;
  bool inCart = false;

  void toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
  }

  void buy() {
    setState(() {
      inCart = true;
      itemCount = 1;
    });
    widget.updateCart(itemCount, parsePrice(widget.newPrice));
  }

  void incrementItem() {
    setState(() {
      itemCount++;
    });
    widget.updateCart(1, parsePrice(widget.newPrice));
  }

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

  double parsePrice(String price) {
    return double.parse(price.replaceAll('₹', ''));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 235,
      margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.index % 2 == 0 ? orangeColor : violetColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Center(
            child: CustomText(
              text: widget.title,
              textSize: 18,
              fontWeight: FontWeight.w500,
              color: blackColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
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
                name: "Buy",
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
