import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rush_baskets/widget/Text.dart';

import '../../../widget/color.dart';

class HomeOfferCard extends StatelessWidget {
  final List<String> imageList = [
    "asset/image/VegCard.png",
    "asset/image/VegCard.png",
    "asset/image/VegCard.png",
    "asset/image/VegCard.png",
  ];

  HomeOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          // height: 300.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
        ),
        items: imageList.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Image.asset(imageUrl, fit: BoxFit.cover),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Happy Weekend", textSize: 12, fontWeight: FontWeight.w500, color: blackColor),
                        CustomText(text: "25% OFF", textSize: 22, fontWeight: FontWeight.w800, color: blackColor),
                        CustomText(text: "*for All Menus", textSize: 12, fontWeight: FontWeight.w500, color: hintTextColor),
                      ],
                    ),
                  )
                ]),
              );
            },
          );
        }).toList(),
      ),
      // CarouselSlider(
      //   options: CarouselOptions(
      //     autoPlay: true,
      //     autoPlayInterval: const Duration(seconds: 3),
      //     enlargeCenterPage: true,
      //     aspectRatio: 16 / 9,
      //     viewportFraction: 0.9,
      //   ),
      //   items: imageList.map((imageUrl) {
      //     return Builder(
      //       builder: (BuildContext context) {
      //         return SizedBox(
      //           width: MediaQuery.of(context).size.width,
      //           child: Stack(
      //             children: [
      //               // Background Image
      //               ClipRRect(
      //                 borderRadius: BorderRadius.circular(15),
      //                 child: Image.asset(
      //                   imageUrl,
      //                   fit: BoxFit.cover,
      //                   width: double.infinity,
      //                   height: 200,
      //                 ),
      //               ),
      //               // Overlay Text
      //               Positioned(
      //                 bottom: 20,
      //                 left: 18,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Happy Weekend",
      //                       style: customTextStyle(14, FontWeight.w500, Colors.white),
      //                     ),
      //                     const SizedBox(height: 4),
      //                     Text(
      //                       "25% OFF",
      //                       style: customTextStyle(24, FontWeight.w800, Colors.white),
      //                     ),
      //                     const SizedBox(height: 4),
      //                     Text(
      //                       "*for All Menus",
      //                       style: customTextStyle(12, FontWeight.w500, Colors.white70),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     );
      //   }).toList(),
      // ),
    );
  }
}
