import 'package:flutter/material.dart';
import 'package:rush_baskets/Location/DragMapsScreen.dart';
import 'package:rush_baskets/Paymant/PayScreen.dart';
import 'package:rush_baskets/widget/Btn.dart';

import '../widget/Spacing.dart';
import '../widget/Text.dart';
import '../widget/color.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DragMapsScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "drag on maps",
                        textSize: 12,
                        fontWeight: FontWeight.w800,
                        color: darkBlueColor,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: darkBlueColor,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            VerticalSpacing(height: 12),
            const CustomText(
                text: "add new address",
                textSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black),
            VerticalSpacing(height: 12),

            TextFormField(
              decoration: const InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: hintTextColor,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: orangeColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            VerticalSpacing(height: 12),

            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                hintText: "Address",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: hintTextColor,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: orangeColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            VerticalSpacing(height: 12),

            TextFormField(
              decoration: const InputDecoration(
                hintText: "Landmark",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: hintTextColor,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: orangeColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            VerticalSpacing(height: 12),

            TextFormField(
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                hintText: "Pin Code",
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: hintTextColor,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: orangeColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            VerticalSpacing(height: 12),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: violetColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: CustomText(
                          text: "cancel", textSize: 15, fontWeight: FontWeight.w500, color: violetColor),
                    ),
                  ),
                ),
                HorizontalSpacing(width: 20),
                Expanded(
                  child: PrimaryBtnWidget(
                    name: "Buy Now",
                    width: 50,
                    height: 40,
                    btnTextSize: 15,
                    textColor: Colors.white,
                    btnColor: orangeColor,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Pay()));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
