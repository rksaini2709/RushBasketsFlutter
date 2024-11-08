import 'package:flutter/material.dart';
import 'package:rush_baskets/Buy/BuyScreen.dart';

import '../widget/Text.dart';
import '../widget/color.dart';

class DragMapsScreen extends StatefulWidget {
  const DragMapsScreen({super.key});

  @override
  State<DragMapsScreen> createState() => _DragMapsScreenState();
}

class _DragMapsScreenState extends State<DragMapsScreen> {
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
