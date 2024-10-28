// rush_baskets\lib\widget\HorizontalSpacing.dart

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