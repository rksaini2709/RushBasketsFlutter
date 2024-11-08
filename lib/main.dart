// rush_baskets\lib\main.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rush_baskets/Authentication/LoginScreen.dart';
import 'package:rush_baskets/Authentication/VerificationScreen.dart';
import 'package:rush_baskets/Buy/BuyScreen.dart';
import 'package:rush_baskets/Cart/SingleItem.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/CartScreen.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/HomeScreen.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/OrdersScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/CouponScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/HelpScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/ProfileScreen.dart';
import 'package:rush_baskets/Order/TrackOrderScreen.dart';
import 'package:rush_baskets/SplashScreen.dart';
import 'package:rush_baskets/widget/IncreDecreMentItem.dart';
import 'package:rush_baskets/widget/ItemView.dart';
import 'package:rush_baskets/widget/ViewMore.dart';

import 'Navigation/NavigationBottom.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen()
    );
  }
}