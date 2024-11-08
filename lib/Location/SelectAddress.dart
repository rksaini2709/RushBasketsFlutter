import 'package:flutter/material.dart';
import 'package:rush_baskets/Paymant/Pay.dart';
import 'package:rush_baskets/widget/Spacing.dart';
import 'package:rush_baskets/widget/Text.dart';
import '../widget/color.dart';
import 'AddNewAddress.dart';

class SelectAddress extends StatefulWidget {
  const SelectAddress({super.key});

  @override
  State<SelectAddress> createState() => _SelectAddressState();
}

class _SelectAddressState extends State<SelectAddress> {
  int? selectedOption;

  void navigateToPaymentScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Pay()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                isDismissible: true,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(15.0)),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(15),
                  //   topRight: Radius.circular(15),
                  // ),
                ),
                builder: (BuildContext context) {
                  return const SingleChildScrollView(
                    child: AddNewAddress(),
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "+ Add new address",
                      textSize: 12,
                      fontWeight: FontWeight.w800,
                      color: darkBlueColor,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: darkBlueColor,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          VerticalSpacing(height: 10),
          const CustomText(text: "select address", textSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
          VerticalSpacing(height: 10),

          // Option 1
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = 1;
              });
              navigateToPaymentScreen();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedOption == 1 ? orangeColor : Colors.black,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Row(
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                      navigateToPaymentScreen();
                    },
                  ),
                  VerticalSpacing(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Rk Saini", textSize: 15, fontWeight: FontWeight.w800, color: Colors.black),
                      CustomText(text: "8629007171", textSize: 12, fontWeight: FontWeight.w800, color: Colors.black),
                      CustomText(text: "Saini Spare Part & Hardware Shop", textSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                      CustomText(text: "Pather (Sultanpur - Chilkana), Sarsawa Gandewar Rd. 247231", textSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ],
                  )
                ],
              ),
            ),
          ),
          VerticalSpacing(height: 20),

          // Option 2
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = 2;
              });
              navigateToPaymentScreen();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedOption == 2 ? orangeColor : Colors.black,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Row(
                children: [
                  Radio<int>(
                    value: 2,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                      navigateToPaymentScreen();
                    },
                  ),
                  VerticalSpacing(height: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Devil", textSize: 15, fontWeight: FontWeight.w800, color: Colors.black),
                      CustomText(text: "8859792830", textSize: 12, fontWeight: FontWeight.w800, color: Colors.black),
                      CustomText(text: "Near by Jio Tower, Vil - Dholaheri,", textSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                      CustomText(text: "Pather (Sultanpur - Chilkana), Sarsawa Gandewar Rd. 247231", textSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                    ],
                  )
                ],
              ),
            ),
          ),
          VerticalSpacing(height: 20),
        ],
      ),
    );
  }
}
