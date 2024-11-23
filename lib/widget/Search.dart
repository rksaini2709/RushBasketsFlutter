import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rush_baskets/widget/Text.dart';

import 'color.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> hintMessages = [
    "Atta, Rice & Dal...",
    "Dry Fruits...",
    "HeadPhone, Video Game..."
  ];
  int currentHintIndex = 0;
  late Timer _timer;
  String inputText = ""; // To track user input

  @override
  void initState() {
    super.initState();

    // Timer to update hint text periodically
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (inputText.isEmpty) {
        setState(() {
          currentHintIndex = (currentHintIndex + 1) % hintMessages.length;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        onChanged: (value) {
          setState(() {
            inputText = value; // Update input text
          });
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: orangeColor,
          ),
          suffixIcon: const Icon(
            Icons.mic,
            color: orangeColor,
          ),
          hintText: inputText.isEmpty ? hintMessages[currentHintIndex] : null,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: hintTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: violetColor),
          ),
        ),
        cursorColor: violetColor,
      ),
    );
  }
}






// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:rush_baskets/widget/Text.dart';
//
// import 'color.dart';
//
// class Search extends StatefulWidget {
//   const Search({super.key});
//
//   @override
//   State<Search> createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//   final List<String> hintMessages = [
//     "Atta, Rice & Dal...",
//     "Dry Fruits...",
//     "HeadPhone, Video Game..."
//   ];
//   int currentHintIndex = 0;
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Timer to update hint text periodically
//     _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
//       setState(() {
//         currentHintIndex = (currentHintIndex + 1) % hintMessages.length;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       child: Stack(
//         alignment: Alignment.centerLeft,
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               prefixIcon: const Icon(
//                 Icons.search,
//                 color: orangeColor,
//               ),
//               suffixIcon: const Icon(
//                 Icons.mic,
//                 color: orangeColor,
//               ),
//               hintText: null,
//               hintStyle: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   color: hintTextColor),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: const BorderSide(color: violetColor),
//               ),
//             ),
//             cursorColor: violetColor,
//             onChanged: (value) {
//               // Implement search logic here
//             },
//           ),
//
//           // Positioned animated hint text
//           Positioned(
//             left: 50,
//             child: AnimatedSwitcher(
//                 duration: const Duration(milliseconds: 600),
//
//                 transitionBuilder: (child, animation) {
//                   return RotationTransition(
//                     turns: animation,
//                     child: child,
//                   );
//                 },
//
//                 // transitionBuilder: (child, animation) {
//                 //   final slideAnimation = Tween<Offset>(
//                 //     begin: const Offset(0, 1), // Start from bottom
//                 //     end: Offset.zero, // End at the center
//                 //   ).animate(animation);
//                 //
//                 //   final rotateAnimation = Tween<double>(
//                 //     begin: 1.0, // Full rotation
//                 //     end: 0.0, // No rotation
//                 //   ).animate(animation);
//                 //
//                 //   return SlideTransition(
//                 //     position: slideAnimation,
//                 //     child: RotationTransition(
//                 //       turns: rotateAnimation,
//                 //       child: child,
//                 //     ),
//                 //   );
//                 // },
//
//                 child: CustomText(
//                     text: hintMessages[currentHintIndex],
//                     key: ValueKey<String>(hintMessages[currentHintIndex]),
//                     textSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: hintTextColor)),
//           ),
//         ],
//       ),
//     );
//   }
// }
