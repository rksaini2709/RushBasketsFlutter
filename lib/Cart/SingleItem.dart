// rush_baskets\lib\Cart\SingleItem.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Spacing.dart';

import '../widget/Btn.dart';
import '../widget/Images.dart';
import '../widget/Location.dart';
import '../widget/color.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                // const locationWidget(),
                // VerticalSpacing(height: 20),
                // SizedBox(
                //   height: 45,
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       prefixIcon: const Icon(
                //         Icons.search,
                //         color: hintTextColor,
                //       ),
                //       suffixIcon: const Icon(
                //         Icons.mic,
                //         color: hintTextColor,
                //       ),
                //       hintText: "Search.....",
                //       hintStyle:
                //       customTextStyle(14, FontWeight.w400, hintTextColor),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide: const BorderSide(color: violetColor),
                //       ),
                //     ),
                //   ),
                // ),
                VerticalSpacing(height: 10),
              ],
            ),
          ),
          VerticalSpacing(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: violetColor),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  VerticalSpacing(height: 20),
                  Image.asset(
                    AssetsImages.chips,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  VerticalSpacing(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryBtnWidget(
                          name: "-",
                          width: 36,
                          height: 26,
                          btnTextSize: 16,
                          textColor: Colors.white,
                          btnColor: orangeColor,
                          onTap: () {}),
                      HorizontalSpacing(width: 14),
                      const Text("2"),
                      HorizontalSpacing(width: 14),
                      PrimaryBtnWidget(
                          name: "+",
                          width: 36,
                          height: 26,
                          btnTextSize: 16,
                          textColor: Colors.white,
                          btnColor: orangeColor,
                          onTap: () {})
                    ],
                  ),
                  VerticalSpacing(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff7c08f),
                        border: Border.all(color: violetColor),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Ptanjali Honey",
                                    style: customTextStyle(
                                        18, FontWeight.w700, Colors.black),
                                  ),
                                  Text(
                                    "( 100% pure )",
                                    style: customTextStyle(
                                        12, FontWeight.w700, Colors.black),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "(243)",
                                    style: customTextStyle(
                                        10, FontWeight.w700, Colors.black),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "₹999",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFEF8120)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "₹4,999 ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    "80% off",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: darkBlueColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(
                                      0xffFFFF04,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 0),
                                  child: Text(
                                    "10% free",
                                    style: customTextStyle(
                                        12, FontWeight.w700, Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Protein"),
                              Text("(g)0.06"),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Energy"),
                              Text("(kc3.08al)6"),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sugars"),
                              Text("total (g)0.06"),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("total dietary"),
                              Text("(g)0.06"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: violetColor),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffc2e1eb)),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "You might also like",
                          style: customTextStyle(
                              15, FontWeight.w800, Colors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              "VIEW MORE",
                              style: customTextStyle(
                                  8, FontWeight.w700, darkBlueColor),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: darkBlueColor,
                            )
                          ],
                        )
                      ],
                    ),
                    VerticalSpacing(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border:
                                        Border.all(color: Colors.black),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 12),
                                      child: Image.asset(
                                          AssetsImages.chips),
                                    )),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: darkBlueColor,
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 0),
                                      child: Text(
                                        "+",
                                        style: customTextStyle(
                                          14,
                                          FontWeight.w800,
                                          Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                              Text(
                                "kitchanware",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "( 5% off )",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "₹ 1599",
                                style: customTextStyle(
                                    14, FontWeight.w800, violetColor),
                              ),
                              Row(
                                children: [
                                  const Text("(243)"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                          HorizontalSpacing(width: 10),
                          Column(
                            children: [
                              Stack(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 12),
                                      child: Image.asset(
                                          AssetsImages.chips),
                                    )),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: darkBlueColor,
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 0),
                                      child: Text(
                                        "+",
                                        style: customTextStyle(
                                          14,
                                          FontWeight.w800,
                                          Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                              Text(
                                "kitchanware",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "( 5% off )",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "₹ 1599",
                                style: customTextStyle(
                                    14, FontWeight.w800, violetColor),
                              ),
                              Row(
                                children: [
                                  const Text("(243)"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                          HorizontalSpacing(width: 10),
                          Column(
                            children: [
                              Stack(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 12),
                                      child: Image.asset(
                                          AssetsImages.chips),
                                    )),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: darkBlueColor,
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 0),
                                      child: Text(
                                        "+",
                                        style: customTextStyle(
                                          14,
                                          FontWeight.w800,
                                          Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                              Text(
                                "kitchanware",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "( 5% off )",
                                style: customTextStyle(
                                    10, FontWeight.w600, Colors.black),
                              ),
                              Text(
                                "₹ 1599",
                                style: customTextStyle(
                                    14, FontWeight.w800, orangeColor),
                              ),
                              Row(
                                children: [
                                  const Text("(243)"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: PrimaryBtnWidget(
                name: "Buy Now",
                width: double.infinity,
                height: 40,
                btnTextSize: 15,
                textColor: Colors.white,
                btnColor: orangeColor,
                onTap: () {
                  // Get.toNamed("/buyNowScreen");
                }),
          )
        ],
      ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}
