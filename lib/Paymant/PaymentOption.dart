import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/color.dart';

class PaymentOption extends StatelessWidget {
  // final IconData? icon;
  String url;
  final String title;
  final bool isAddOption;
  final VoidCallback? onTap;

  PaymentOption({
    required this.url,
    required this.title,
    this.isAddOption = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: violetColor),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.asset(url),
        title: Text(title),
        trailing: isAddOption
            ? const Text(
          'ADD',
          style: TextStyle(
              color: darkBlueColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        )
            : null,
        onTap: onTap,
      ),
    );
  }
}