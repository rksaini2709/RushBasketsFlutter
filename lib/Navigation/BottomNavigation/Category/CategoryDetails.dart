import 'package:flutter/cupertino.dart';

import '../../../widget/Spacing.dart';
import 'CategoryStoreItem.dart';

class CategoryDetails extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final int ratingCount;
  final bool buyNow;
  final Function(int, double) updateCart;

  const CategoryDetails({
    super.key,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.ratingCount,
    this.buyNow = false,
    required this.updateCart,
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
            buyNow: buyNow,
            imagePath: '',
            updateCart: updateCart,
          ),
        ),
        HorizontalSpacing(width: 10),
        Expanded(
          child: CategoryStoreItem(
            title: title,
            oldPrice: oldPrice,
            newPrice: newPrice,
            ratingCount: ratingCount,
            buyNow: buyNow,
            imagePath: '',
            updateCart: updateCart,
          ),
        ),
      ],
    );
  }
}
