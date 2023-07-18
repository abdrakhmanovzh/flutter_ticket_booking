import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_assets.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking/core/widgets/column_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.logo,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Book Tickets",
                    style: AppStyles.headerStyle1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "New York",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xfffef4f3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentIcons.shield_20_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Premium status",
                          style: TextStyle(color: Color(0xff526799), fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit',
                    style: AppStyles.paragraphStyle.copyWith(color: AppColors.primary, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -25,
                top: -30,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xff264cd2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentIcons.lightbulb_filament_20_filled,
                        color: AppColors.primary,
                        size: 27,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award!",
                          style: AppStyles.headerStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You had 95 flights this year.",
                          style: AppStyles.headerStyle2.copyWith(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Accumulated miles",
            style: AppStyles.headerStyle2,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  "199282",
                  style: TextStyle(
                    fontSize: 45,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: AppStyles.headerStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "23 May 2022",
                      style: AppStyles.headerStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnText(
                      topText: "23 042",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      topTextColor: Colors.black,
                    ),
                    ColumnText(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      topTextColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnText(
                      topText: "24",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      topTextColor: Colors.black,
                    ),
                    ColumnText(
                      topText: "McDonal's",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      topTextColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnText(
                      topText: "52 340",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      topTextColor: Colors.black,
                    ),
                    ColumnText(
                      topText: "Exuma",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      topTextColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "How to get more miles?",
              style: AppStyles.paragraphStyle.copyWith(color: AppColors.primary, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
