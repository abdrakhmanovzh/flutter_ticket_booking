import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';

class AppStyles {
  AppStyles._();

  static const TextStyle paragraphStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headerStyle1 = TextStyle(
    fontSize: 26,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headerStyle2 = TextStyle(
    fontSize: 21,
    color: AppColors.textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headerStyle3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headerStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}
