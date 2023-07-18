import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';

class ColumnText extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String topText;
  final String bottomText;
  final Color? topTextColor;
  final Color? bottomTextColor;
  const ColumnText({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.alignment,
    this.topTextColor,
    this.bottomTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          topText,
          style: topTextColor == null ? AppStyles.headerStyle3 : AppStyles.headerStyle3.copyWith(color: topTextColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bottomText,
          style: bottomTextColor == null ? AppStyles.headerStyle4 : AppStyles.headerStyle4.copyWith(color: bottomTextColor),
        ),
      ],
    );
  }
}
