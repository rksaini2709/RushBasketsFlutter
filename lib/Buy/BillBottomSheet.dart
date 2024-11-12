import 'package:flutter/cupertino.dart';

import '../widget/Text.dart';
import '../widget/color.dart';

class BillBottomSheet extends StatelessWidget {
  final int itemCount;
  final double totalAmount;

  // Accepting itemCount and totalAmount via constructor
  BillBottomSheet({
    super.key,
    required this.itemCount,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomText(
            text: "Total",
            textSize: 20,
            fontWeight: FontWeight.w800,
            color: blackColor,
          ),
          Text.rich(
            TextSpan(
              text: 'Total Items: ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
              children: [
                TextSpan(
                  text: itemCount.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Total amount: ',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
              children: [
                TextSpan(
                  text: '₹ ${totalAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
