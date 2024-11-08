import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: orangeColor,
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: orangeColor,
          ),
          hintText: "Search.....",
          hintStyle:
          customTextStyle(14, FontWeight.w400, hintTextColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: violetColor),
          ),
        ),
        onChanged: (value) {
          // Implement search logic here
        },
      ),
    );
  }

  customTextStyle(int i, FontWeight w400, Color hintTextColor) {}
}
