import 'package:flutter/cupertino.dart';

import '../widget/Spacing.dart';
import 'CategoryStoreItem.dart';

class CategoryDetails extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final int ratingCount;
  final bool isAddToCart;

  const CategoryDetails({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.ratingCount,
    this.isAddToCart = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CategoryStoreItem(
            title: title,
            oldPrice: oldPrice,
            newPrice: newPrice,
            ratingCount: ratingCount,
            isAddToCart: isAddToCart,
            imagePath: '',
          ),
        ),
        HorizontalSpacing(width: 10),
        Expanded(
          child: CategoryStoreItem(
            title: title,
            oldPrice: oldPrice,
            newPrice: newPrice,
            ratingCount: ratingCount,
            isAddToCart: isAddToCart,
            imagePath: '',
          ),
        ),
      ],
    );
  }
}
