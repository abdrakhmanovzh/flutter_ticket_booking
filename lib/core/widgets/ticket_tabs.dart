import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstLabel;
  final String secondLabel;
  const TicketTabs({super.key, required this.firstLabel, required this.secondLabel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.45,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(50),
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              firstLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.44,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(50),
            ),
            color: Colors.transparent,
          ),
          child: Center(
            child: Text(
              secondLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
