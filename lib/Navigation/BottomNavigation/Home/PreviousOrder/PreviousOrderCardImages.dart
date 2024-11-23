import 'package:flutter/material.dart';

import '../../../../widget/Spacing.dart';
import '../../../../widget/color.dart';

class PreviousOrderCardImages extends StatelessWidget {
  final List<String> imageUrls;

  const PreviousOrderCardImages({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < imageUrls.length; i++) ...[
              Image.asset(imageUrls[i], height: 50, width: 50),
              if (i < imageUrls.length - 1) ...[
                HorizontalSpacing(width: 10),
                const Text("+  ", style: TextStyle(fontSize: 20, color: blackColor)),
              ],
            ],
          ],
        ),
      ),
    );
  }
}
