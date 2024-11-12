import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';

class HomeCategoryProdect extends StatelessWidget {
  final String imageUrl;
  final String subTitle;
  final int index;

  const HomeCategoryProdect({
    super.key,
    required this.imageUrl,
    required this.subTitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 115,
          // width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: index % 2 == 0 ? orangeColor : violetColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset(
              imageUrl,
              // height: 75,
              // width: 75,
            ),
          ),
        ),
        VerticalSpacing(height: 5),
        CustomText(
          text: subTitle,
          textSize: 15,
          fontWeight: FontWeight.w700,
          color: blackColor,
        ),
      ],
    );
  }
}
