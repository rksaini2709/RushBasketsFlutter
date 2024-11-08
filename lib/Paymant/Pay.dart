import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';
import 'package:rush_baskets/widget/color.dart';

import '../widget/Btn.dart';
import '../widget/Images.dart';
import 'SectionTitle.dart';
import 'PaymentOption.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const CustomText(text: "Payments",
            textSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        leadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              onPressed: () {
                // Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(16.0),
      //   children: [
      //     // Cards section
      //     const SectionTitle(title: 'Cards'),
      //     PaymentOption(
      //       // icon: Icons.credit_card,
      //       url: AssetsImages.creditCard,
      //       title: 'Add credit or debit cards',
      //       isAddOption: true,
      //       onTap: () => _showAddCartBottomSheet(context),
      //     ),
      //
      //     // VerticleSpacing(height: 10),
      //     // // UPI section
      //     // const SectionTitle(title: 'PAY by any UPI APP'),
      //     // PaymentOption(
      //     //   url: AssetsImages.GpayImage,
      //     //   title: 'Google Pay',
      //     // ),
      //     // VerticleSpacing(height: 10),
      //     // PaymentOption(
      //     //   url: AssetsImages.PhonePayImage,
      //     //   title: 'Phone Pay',
      //     // ),
      //     // VerticleSpacing(height: 10),
      //     // PaymentOption(
      //     //   url: AssetsImages.amazonImage,
      //     //   title: 'Amazon Pay',
      //     // ),
      //     // VerticleSpacing(height: 10),
      //     // PaymentOption(
      //     //   url: AssetsImages.UpiIdImage,
      //     //   title: 'Add new UPI ID',
      //     //   isAddOption: true,
      //     //   onTap: () => _showAddUpiBottomSheet(context),
      //     // ),
      //     //
      //     // // // Netbanking section
      //     // // const SectionTitle(title: 'Netbanking'),
      //     // // PaymentOption(
      //     // //   url: AssetsImages.netBankingImage,
      //     // //   title: 'Netbanking',
      //     // //   isAddOption: true,
      //     // // ),
      //     //
      //     // // Cash on delivery section
      //     // const SectionTitle(title: 'Cash On Delivery'),
      //     // PaymentOption(
      //     //   url: AssetsImages.CODImage,
      //     //   title: 'Cash on delivery',
      //     // ),
      //     // VerticleSpacing(height: 40),
      //     //
      //     // // Order button
      //     // PrimaryBtnWidget(
      //     //     name: "Order Now",
      //     //     width: double.infinity,
      //     //     height: 44,
      //     //     btnTextSize: 18,
      //     //     btnColor: primaryColor,
      //     //     textColor: whiteColor,
      //     //     onTap: () {})
      //   ],
      // ),
    );
  }

//   // Show bottom sheet to add card
//   _showAddCartBottomSheet(BuildContext context) {
//     final TextEditingController cardNumberController = TextEditingController();
//     final TextEditingController cardHolderController = TextEditingController();
//     final TextEditingController expirationController = TextEditingController();
//     final TextEditingController cvvController = TextEditingController();
//
//     Get.bottomSheet(
//       SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           color: Colors.white,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Add Credit Card',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: cardNumberController,
//                 decoration: const InputDecoration(
//                     labelText: 'Card Number', border: OutlineInputBorder()),
//                 keyboardType: TextInputType.number,
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: cardHolderController,
//                 decoration: const InputDecoration(
//                     labelText: 'Card Holder Name',
//                     border: OutlineInputBorder()),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: expirationController,
//                 decoration: const InputDecoration(
//                     labelText: 'Expiration Date (MM/YY)',
//                     border: OutlineInputBorder()),
//                 keyboardType: TextInputType.datetime,
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: cvvController,
//                 decoration: const InputDecoration(
//                     labelText: 'CVV', border: OutlineInputBorder()),
//                 keyboardType: TextInputType.number,
//               ),
//               const SizedBox(height: 20),
//               PrimaryBtnWidget(
//                   name: "Add Cart",
//                   width: double.infinity,
//                   height: 44,
//                   btnTextSize: 18,
//                   btnColor: orangeColor,
//                   textColor: Colors.white,
//                   onTap: () {})
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
}
