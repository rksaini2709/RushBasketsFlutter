// rush_baskets\lib\Navigation\NavigationBottom.dart

import 'package:flutter/material.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Cart/CartScreen.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Category/CategoriesScreen.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Home/HomeScreen.dart';
import 'package:rush_baskets/Navigation/BottomNavigation/Order/OrdersScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/CouponScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/DeliverScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/HelpScreen.dart';
import 'package:rush_baskets/Navigation/DrawerNavigation/PaymentsScreen.dart';
import 'package:rush_baskets/widget/Text.dart';

import '../widget/color.dart';
import 'DrawerNavigation/ProfileScreen.dart';

class NavigationBottomScreen extends StatefulWidget {
  final int initialIndex;
  const NavigationBottomScreen({super.key, required this.initialIndex});

  @override
  _NavigationBottomScreenState createState() => _NavigationBottomScreenState();
}

class _NavigationBottomScreenState extends State<NavigationBottomScreen> {
  late int _currentIndex;

  @override
  void initState(){
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  // final List<Widget> _pages = [
  //   HomeScreen(),
  //   CategoriesScreen(),
  //   CartScreen(),
  //   const OrdersScreen(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: lightVioletColor),
              margin: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("asset/icon/AppIcon.png"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: lightVioletColor,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProfileScreen()),
                        );
                      },
                      child: const SizedBox(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "my account",
                                textSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              CustomText(
                                text: "88xxxxxx30",
                                textSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Image.asset(
                              "asset/image/help.png",
                              width: 40,
                              height: 40,
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
                            },
                          ),
                          InkWell(
                            child: Image.asset(
                              "asset/image/payment.png",
                              width: 55,
                              height: 55,
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                            },
                          ),
                          InkWell(
                            child: Image.asset(
                              "asset/image/deliver.png",
                              width: 40,
                              height: 40,
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Deliverscreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Color(0xffEF8120),
                        ),
                      ),
                      title: const CustomText(
                          text: "Your Orders",
                          textSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationBottomScreen(initialIndex: 3)));
                      },
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                        child: const Icon(
                          Icons.local_offer,
                          color: Color(0xffEF8120),
                        ),
                      ),
                      title: const CustomText(
                          text: "Collected Coupons",
                          textSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CouponScreen()));
                      },
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                        child: const Icon(
                          Icons.share,
                          color: Color(0xffEF8120),
                        ),
                      ),
                      title: const CustomText(
                          text: "Share the app",
                          textSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                        child: const Icon(
                          Icons.notifications_active,
                          color: Color(0xffEF8120),
                        ),
                      ),
                      title: const CustomText(
                          text: "Notification performances",
                          textSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                        child: const Icon(
                          Icons.logout_outlined,
                          color: Color(0xffEF8120),
                        ),
                      ),
                      title: const CustomText(
                          text: "Log out",
                          textSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Row(
          children: [
            CustomText(text: "Rush", textSize: 25, fontWeight: FontWeight.w700, color: Color(0xffEF8120)),
            CustomText(text: "Baskets", textSize: 25, fontWeight: FontWeight.w700, color: Color(0xff194872)),
          ],
        ),
        actions: [
          // const SizedBox(
          //   child: Icon(
          //       Icons.favorite,
          //       color: Color(0xffEF8120),
          //       size: 25,
          //     ),
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigationBottomScreen(initialIndex: 2)),
                );
              },
              child: const SizedBox(
                child: Icon(
                  Icons.notifications_active,
                  color: Color(0xffEF8120),
                  size: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );
                },
                child: Image.asset(
                  "asset/image/Profile.png",
                ),
              ),

            ),
          ),
        ],
      ),
      body:
      // _pages[_currentIndex],
      IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          CategoriesScreen(),
          const CartScreen(),
          const OrdersScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xffEF8120),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color(0xFF194872),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ' ',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
