import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconText({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2d5),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppStyles.paragraphStyle,
          )
        ],
      ),
    );
  }
}
