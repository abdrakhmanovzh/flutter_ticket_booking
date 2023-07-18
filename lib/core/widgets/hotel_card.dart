import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_assets.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      width: size.width * 0.6,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primary,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['place'],
            style: AppStyles.headerStyle2.copyWith(color: Color(0xffd2bdb6)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['destination'],
            style: AppStyles.headerStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '\$${hotel['price']}/night',
            style: AppStyles.headerStyle1.copyWith(color: Color(0xffd2bdb6)),
          ),
        ],
      ),
    );
  }
}
