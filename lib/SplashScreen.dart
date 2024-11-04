// rush_baskets\lib\SplashScreen.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Authentication/LoginScreen.dart';
import 'package:rush_baskets/widget/Images.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Loginscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:
        Image.asset("asset/icon/AppIcon.png")
    // Image.asset(AssetsImages.appIcon)
    ));
  }
}
