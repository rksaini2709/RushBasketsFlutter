import 'package:flutter/material.dart';
import 'package:rush_baskets/Buy/BuyScreen.dart';

import '../widget/Text.dart';
import '../widget/color.dart';

class DragMaps extends StatefulWidget {
  const DragMaps({super.key});

  @override
  State<DragMaps> createState() => _DragMapsState();
}

class _DragMapsState extends State<DragMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(
          text: "Drag Maps",
          textSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BuyScreen()
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("Drag Maps Content"),
      ),
    );
  }
}
