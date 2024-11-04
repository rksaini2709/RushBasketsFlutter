// rush_baskets\lib\widget\Spacing.dartrush_baskets\lib\widget\HorizontalSpacing.dart

import 'package:flutter/cupertino.dart';

class HorizontalSpacing extends StatelessWidget {
  double width;
  HorizontalSpacing({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class VerticalSpacing extends StatelessWidget {
  late double height;
  VerticalSpacing({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}