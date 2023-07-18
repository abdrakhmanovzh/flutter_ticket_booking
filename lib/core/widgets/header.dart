import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';

class Header extends StatelessWidget {
  final String label;
  final String buttonText;
  const Header({super.key, required this.label, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppStyles.headerStyle2,
        ),
        GestureDetector(
          child: Text(
            buttonText,
            style: AppStyles.paragraphStyle.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
