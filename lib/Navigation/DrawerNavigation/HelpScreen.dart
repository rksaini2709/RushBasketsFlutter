// rush_baskets\lib\Navigation\DrawerNavigation\HelpScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../widget/Spacing.dart';
import '../NavigationBottom.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text(
          "Help",
          style: customTextStyle(22, FontWeight.w700, Colors.white),
        ),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationBottomScreen(initialIndex: 0,)));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(height: 20),
            Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: violetColor,
                  ),
                  child: const CustomText(
                      text: "today",
                      textSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
            Container(
                margin: const EdgeInsets.only(top: 25),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: lightVioletColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Hi,\nWelcome to Rush Basket",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: lightVioletColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "How may I help you today",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 1.3),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: lightOrangeColor,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "nothing..",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.3),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: lightVioletColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Thanks for your responses",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Expanded(child: Container()),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your message here',
                  filled: true,
                  fillColor: lightOrangeColor,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Handle the send action
                    },
                    icon: const Icon(Icons.send, color: violetColor),
                  ),
                ),
                // maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}
