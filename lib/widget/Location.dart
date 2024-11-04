// rush_baskets\lib\widget\Location.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import 'Spacing.dart';

class locationWidget extends StatelessWidget {
  const locationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            foregroundColor: hintTextColor,
            child: Icon(
              Icons.location_on,
              color: orangeColor,
            ),
          ),
          HorizontalSpacing(width: 10),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Saharanpur", textSize: 14, fontWeight: FontWeight.w800, color: Colors.black),
              CustomText(text: "Dholaheri, 247231", textSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}
