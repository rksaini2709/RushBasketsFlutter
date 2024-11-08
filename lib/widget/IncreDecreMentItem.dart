import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';
import 'Spacing.dart';

class IncreDecreMentItem extends StatefulWidget {
  const IncreDecreMentItem({super.key});

  @override
  State<IncreDecreMentItem> createState() => _IncreDecreMentItemState();
}

class _IncreDecreMentItemState extends State<IncreDecreMentItem> {
  int count = 0;

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: decrement,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(50, 30),
            padding: EdgeInsets.zero,
            backgroundColor: orangeColor,
          ),
          child: const Icon(
            Icons.remove,
            color: Colors.white,
            size: 20,  // Adjusted icon size
          ),
        ),
        HorizontalSpacing(width: 10),
        CustomText(
          text: '$count',
          textSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        HorizontalSpacing(width: 10),
        ElevatedButton(
          onPressed: increment,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(50, 30),
            padding: EdgeInsets.zero,
            backgroundColor: orangeColor,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
