import 'package:flutter/material.dart';

class HomeCategoryProdect extends StatelessWidget {
  final String imageUrl;
  final String subTitle;

  const HomeCategoryProdect({super.key, required this.imageUrl, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
