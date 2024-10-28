// rush_baskets\lib\widget\VerticalSpacing.dart

import 'package:flutter/cupertino.dart';

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