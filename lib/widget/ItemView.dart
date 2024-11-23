import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemView extends StatelessWidget {
  final List<String> _imageList = [
    "asset/image/honey.png",
    "asset/image/Chips.png",
    "asset/image/HomeCleaner.png",
    "asset/image/VegCard.png",
    "asset/image/honey.png",
  ];

  final PageController _pageController = PageController();

  ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        // Image Carousel inside a container with padding
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _imageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(12),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.3),
                  //       spreadRadius: 2,
                  //       blurRadius: 5,
                  //     ),
                  //   ],
                  // ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      _imageList[index],
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),

        // Dots Indicator (using smooth_page_indicator)
        SmoothPageIndicator(
          controller: _pageController,
          count: _imageList.length,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Colors.orange,
            dotColor: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
