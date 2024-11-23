import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Spacing.dart';

import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';
import 'HomeCategoryProdect.dart';

class HomeCategoryProductDetails extends StatelessWidget {
  final String title;
  final List<Map<String, String>> categories;

  const HomeCategoryProductDetails({
    super.key,
    required this.title,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Title name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                textSize: 18,
                fontWeight: FontWeight.w700,
                color: blackColor,
              ),
              const Icon(Icons.arrow_forward_ios, size: 14),
            ],
          ),

          VerticalSpacing(height: 10),

          // Grid view
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 2.5),
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: index % 2 == 0 ? orangeColor : violetColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Expanded(
                  child: HomeCategoryProdect(
                    imageUrl: category['imageUrl'] ?? '',
                    subTitle: category['subTitle'] ?? '',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
