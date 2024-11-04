// rush_baskets\lib\Navigation\DrawerNavigation\ProfileScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rush_baskets/Navigation/NavigationBottom.dart';
import 'package:rush_baskets/widget/Btn.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../../widget/Spacing.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationBottomScreen(initialIndex: 0,)));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const CustomText(
            text: "Profile",
            textSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                        AssetImage("asset/image/Profile.png")),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(2),
                          child: Icon(
                            Icons.add,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
              VerticalSpacing(height: 40),
              SizedBox(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        hintText: "Full Name",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticalSpacing(height: 20),
              Container(
                height: 42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff194872)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "asset/icon/India.png",
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 8),
                    // Country code text
                    const CustomText(
                      text: "+91",
                      textSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10),
                        ],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your number",
                          hintStyle: customTextStyle(
                              14, FontWeight.w400, hintTextColor),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 11),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacing(height: 20),
              SizedBox(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        hintText: "Email",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticalSpacing(height: 20),
              SizedBox(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        hintText: "Street",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticalSpacing(height: 20),
              SizedBox(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        hintText: "City",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticalSpacing(height: 20),
              SizedBox(
                height: 42,
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff194872))),
                        hintText: "District",
                        hintStyle: customTextStyle(
                            14, FontWeight.w400, hintTextColor))),
              ),
              VerticalSpacing(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: SecondaryBtnWidget(
                          name: "cancel",
                          width: double.infinity,
                          btnColor: violetColor,
                          textColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NavigationBottomScreen(initialIndex: 0,)));
                          })),
                  HorizontalSpacing(width: 20),
                  Expanded(
                      child: SecondaryBtnWidget(
                          name: "save",
                          width: double.infinity,
                          btnColor: orangeColor,
                          textColor: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NavigationBottomScreen(initialIndex: 0,)));
                          }))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // hint text Style
  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}
