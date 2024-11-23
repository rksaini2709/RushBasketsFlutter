// // rush_baskets\lib\Navigation\BottomNavigation\Category\CategoryDetails.dart
// import 'package:flutter/cupertino.dart';
//
// import '../../../widget/Spacing.dart';
// import 'CategoryStoreItems.dart';
//
// class CategoryDetails extends StatelessWidget {
//   final String title;
//   final String oldPrice;
//   final String newPrice;
//   final int ratingCount;
//   final bool buyNow;
//   final Function(int, double) updateCart;
//
//   const CategoryDetails({
//     super.key,
//     required this.title,
//     required this.oldPrice,
//     required this.newPrice,
//     required this.ratingCount,
//     this.buyNow = false,
//     required this.updateCart,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: CategoryStoreItems(
//             title: title,
//             oldPrice: oldPrice,
//             newPrice: newPrice,
//             ratingCount: ratingCount,
//             buyNow: buyNow,
//             imagePath: '',
//             updateCart: updateCart, index: null, percentageOff: '', quantity: '', timeLeft: '',
//           ),
//         ),
//
//         HorizontalSpacing(width: 10),
//
//         Expanded(
//           child: CategoryStoreItems(
//             title: title,
//             oldPrice: oldPrice,
//             newPrice: newPrice,
//             ratingCount: ratingCount,
//             buyNow: buyNow,
//             imagePath: '',
//             updateCart: updateCart, index: null, percentageOff: '', quantity: '', timeLeft: '',
//           ),
//         ),
//       ],
//     );
//   }
// }