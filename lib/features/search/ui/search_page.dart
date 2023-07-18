import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking/core/widgets/header.dart';
import 'package:flutter_ticket_booking/core/widgets/icon_text.dart';
import 'package:flutter_ticket_booking/core/widgets/ticket_tabs.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headerStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xfff4f6fb),
            ),
            child: const TicketTabs(
              firstLabel: "Airline tickets",
              secondLabel: "Hotels",
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const IconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          const IconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xd91130ce),
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: AppStyles.paragraphStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Header(label: 'Upcoming flights', buttonText: 'View all'),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 400,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sit.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "20% discount on the early booking of this flight. Don't miss the chance!",
                      style: AppStyles.headerStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 175,
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: AppStyles.headerStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Take the survey about our services and get a discount",
                              style: AppStyles.headerStyle3.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -25,
                        top: -20,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xff189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: size.width * 0.44,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: AppStyles.headerStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 35),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 35),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
