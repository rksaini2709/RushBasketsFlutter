// rush_baskets\lib\widget\Btn.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Primary button that will appear when the condition is true
// then it will be clickable otherwise it won't
class PrimaryBtnWidget extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final double btnTextSize;
  final Color btnColor;
  final Color textColor;
  final VoidCallback? onTap;

  PrimaryBtnWidget({
    Key? key,
    required this.name,
    required this.width,
    this.height = 45,
    this.btnTextSize = 25,
    this.btnColor = const Color(0xffEF8120),
    this.textColor = CupertinoColors.white,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: btnColor,
      ),
      child: Text(
        name,
        style: TextStyle(fontSize: btnTextSize, color: textColor),
      ),
    );
  }
}

class SecondaryBtnWidget extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final double btnTextSize;
  final Color btnColor;
  final Color textColor;
  final VoidCallback onTap;

  const SecondaryBtnWidget({
    super.key,
    required this.name,
    required this.width,
    this.height = 45,
    this.btnTextSize = 25,
    required this.btnColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: btnTextSize,
              fontWeight: FontWeight.w800,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}