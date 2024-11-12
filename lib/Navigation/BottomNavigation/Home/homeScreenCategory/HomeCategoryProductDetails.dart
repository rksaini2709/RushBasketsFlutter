import 'package:flutter/material.dart';
import '../../../../widget/Text.dart';
import '../../../../widget/color.dart';
import 'HomeCategoryProdect.dart';

class HomeCategoryProductDetails extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> categories;

  const HomeCategoryProductDetails({
    super.key,
    required this.title,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return HomeCategoryProdect(
              imageUrl: categories[index]["imageUrl"] as String,
              subTitle: categories[index]["subTitle"] as String,
              index: categories[index]["index"] as int,
            );
          },
        ),
      ],
    );
  }
}
