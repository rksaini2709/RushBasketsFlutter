import 'package:flutter/cupertino.dart';

class AssetsImages {
  static const iconsPath = "asset/Icon";
  static const imagesPath = "asset/Image";

// Icon Image
  static const appIcon = "$iconsPath/AppIcon.png";
  static const india = "$iconsPath/India.png";
  static const grocery = "$iconsPath/Grocery.png";

// PNG Image
  static const login = "$imagesPath/Login.png";
  static const verification = "$imagesPath/Verification.png";
  static const profile = "$imagesPath/Profile.png";
  static const chips = "$imagesPath/Chips.png";
  static const vegetable = "$imagesPath/VegCard.png";
  static const honey = "$imagesPath/honey.png";
  static const creditCard = "$imagesPath/CreditCard.png";

  // Function to get image with specified size
  static Widget getImage(String assetName, {required double width, required double height}) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
    );
  }
}
