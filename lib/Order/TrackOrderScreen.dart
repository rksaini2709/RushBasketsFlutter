// rush_baskets\lib\Order\TrackOrderScreen.dart

import 'package:flutter/material.dart';

class TrackOrderScreeen extends StatelessWidget {
  const TrackOrderScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TimelineItem> items = [
      TimelineItem(status: 'Ordered', time: '10 min ago'),
      TimelineItem(status: 'Packed', time: '08 min ago'),
      TimelineItem(status: 'Shipped', time: '06 min ago'),
      TimelineItem(status: 'Delivery', time: '04 min ago'),
    ];

    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: primaryColor,
      //   title: Text(
      //     "Track Your Orders",
      //     style: customTextStyle(22, FontWeight.w700, whiteColor),
      //   ),
      //   leadingWidth: 30,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 10),
      //     child: IconButton(
      //         onPressed: () {
      //           Get.back();
      //         },
      //         icon: const Icon(
      //           Icons.arrow_back_ios,
      //           color: whiteColor,
      //         )),
      //   ),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      //   child: Container(
      //     width: MediaQuery.of(context).size.height,
      //     height: 576,
      //     decoration: BoxDecoration(
      //       // color: Colors.red,
      //       border: Border.all(
      //         color: hintTextColor,
      //       ),
      //       borderRadius: const BorderRadius.all(
      //         Radius.circular(20),
      //       ),
      //     ),
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.fromLTRB(20, 18, 20, 10),
      //           child: Row(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text("Lays Chips Combo \nPack",
      //                       style: customTextStyle(
      //                           20, FontWeight.w800, blackColor)),
      //                   const Text(
      //                     "(total 8 packet in combo)",
      //                     style: TextStyle(
      //                         fontSize: 15, fontWeight: FontWeight.w500),
      //                   ),
      //                   const SizedBox(
      //                     height: 6,
      //                   ),
      //                   const Text(
      //                     "1 best offer",
      //                     style: TextStyle(
      //                         fontSize: 8,
      //                         fontWeight: FontWeight.w700,
      //                         color: Color(0xFF0000FF)),
      //                   ),
      //                   const Row(
      //                     children: [
      //                       Text(
      //                         "₹ 152.00",
      //                         style: TextStyle(
      //                             fontSize: 18,
      //                             fontWeight: FontWeight.w700,
      //                             color: Color(0xFFEF8120)),
      //                       ),
      //                       SizedBox(
      //                         width: 15,
      //                       ),
      //                       Text(
      //                         "₹ 160.00",
      //                         style: TextStyle(
      //                           fontSize: 12,
      //                           fontWeight: FontWeight.w700,
      //                           color: Colors.grey,
      //                           decoration: TextDecoration.lineThrough,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   const SizedBox(
      //                     height: 8,
      //                   ),
      //                   Container(
      //                     width: 80,
      //                     height: 20,
      //                     decoration: BoxDecoration(
      //                       color: const Color.fromARGB(255, 245, 174, 112),
      //                       border: Border.all(
      //                         color: secondaryColor,
      //                       ),
      //                       borderRadius: BorderRadius.circular(10),
      //                     ),
      //                     child: Center(
      //                       child: Text("Quantity : 1",
      //                           style: customTextStyle(
      //                               10, FontWeight.w700, secondaryColor)),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Container(
      //                 // width: 115,
      //                 // height: 115,
      //                 decoration: BoxDecoration(
      //                     border: Border.all(
      //                       color: Colors.black,
      //                     ),
      //                     borderRadius:
      //                     const BorderRadius.all(Radius.circular(10))),
      //                 child: Padding(
      //                   padding: const EdgeInsets.all(10),
      //                   child: Image.asset(
      //                     AssetsImages.chipsImage,
      //                     width: 70,
      //                     height: 70,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Divider(),
      //         Padding(
      //           padding: const EdgeInsets.all(20.0),
      //           child: SizedBox(
      //             height: 300,
      //             child: ListView.builder(
      //               itemCount: items.length,
      //               itemBuilder: (context, index) {
      //                 return Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [
      //                     Row(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         // Dot and Line
      //                         Column(
      //                           children: [
      //                             // Circle for step
      //                             Container(
      //                               width: 12,
      //                               height: 12,
      //                               decoration: const BoxDecoration(
      //                                 color: Colors.orange,
      //                                 shape: BoxShape.circle,
      //                               ),
      //                             ),
      //                             // Line after the dot (skip last item)
      //                             if (index != items.length - 1)
      //                               Container(
      //                                 width: 2,
      //                                 height: 60,
      //                                 color: Colors.orange,
      //                               ),
      //                           ],
      //                         ),
      //                         const SizedBox(width: 16),
      //                         // Status and Time
      //                         Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text(
      //                               items[index].status,
      //                               style: const TextStyle(
      //                                   fontSize: 18,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                             Text(
      //                               items[index].time,
      //                               style: const TextStyle(
      //                                   fontSize: 14, color: Colors.black54),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 );
      //               },
      //             ),
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Expanded(
      //               child: Container(
      //                 height: 40,
      //                 decoration: BoxDecoration(
      //                     border: Border.all(
      //                       color: blackColor,
      //                     ),
      //                     borderRadius: BorderRadius.only(
      //                         bottomLeft: Radius.circular(20)),
      //                     color: primaryColor),
      //                 child: Center(
      //                     child: Text(
      //                       "Cancel",
      //                       style: customTextStyle(15, FontWeight.w700, whiteColor),
      //                     )),
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 height: 40,
      //                 decoration: BoxDecoration(
      //                     border: Border.all(
      //                       color: blackColor,
      //                     ),
      //                     borderRadius: BorderRadius.only(
      //                         bottomRight: Radius.circular(20)),
      //                     color: primaryColor),
      //                 child: Center(
      //                     child: Text(
      //                       "Need help?",
      //                       style: customTextStyle(15, FontWeight.w700, whiteColor),
      //                     )),
      //               ),
      //             )
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  TextStyle customTextStyle(double size, FontWeight weight, Color color) {
    return TextStyle(fontWeight: weight, fontSize: size, color: color);
  }
}

class TimelineItem {
  final String status;
  final String time;

  TimelineItem({required this.status, required this.time});
}
