// rush_baskets\lib\Order\TrackOrderScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Navigation/NavigationBottom.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../../widget/Spacing.dart';
import '../../../widget/Time.dart';
import '../../DrawerNavigation/HelpScreen.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TimelineItem> items = [
      const TimelineItem(status: 'Ordered', time: '10 min ago'),
      const TimelineItem(status: 'Packed', time: '08 min ago'),
      const TimelineItem(status: 'Shipped', time: '06 min ago'),
      const TimelineItem(status: 'Delivery', time: '04 min ago'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(
            text: "Track Order",
            textSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const NavigationBottomScreen(initialIndex: 3)));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: hintTextColor,
                ),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Column(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 18, 18, 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomText(
                                    text: "Lays Chips Combo pack",
                                    textSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                                const CustomText(
                                    text: "(total 8 packet in combo)",
                                    textSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                                VerticalSpacing(height: 6),
                                const CustomText(
                                    text: "1 best offer",
                                    textSize: 8,
                                    fontWeight: FontWeight.w700,
                                    color: darkBlueColor),
                                Row(
                                  children: [
                                    const CustomText(
                                        text: "₹ 152.00",
                                        textSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: orangeColor),
                                    HorizontalSpacing(width: 15),
                                    const Text(
                                      "₹ 160.00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                        decoration:
                                        TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalSpacing(height: 8),
                                Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 245, 174, 112),
                                    border: Border.all(
                                      color: violetColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: CustomText(
                                        text: "Quantity : 1",
                                        textSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: violetColor),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child:
                                // Image.asset(AssetsImages.chips),
                                Image.asset(
                                  "asset/image/Chips.png",
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          height: 290,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 12,
                                            height: 12,
                                            decoration: const BoxDecoration(
                                              color: Colors.orange,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          if (index != items.length - 1)
                                            Container(
                                              width: 2,
                                              height: 60,
                                              color: Colors.orange,
                                            ),
                                        ],
                                      ),
                                      const SizedBox(width: 16),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            items[index].status,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            items[index].time,
                                            style: const TextStyle(
                                                fontSize: 14, color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
                          color: orangeColor),
                      child: const Center(
                        child: CustomText(
                            text: "cancel",
                            textSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HelpScreen(), // Replace with your HelpScreen widget
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(20)),
                          color: orangeColor),
                      child: const Center(
                          child: CustomText(
                              text: "need help?",
                              textSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}