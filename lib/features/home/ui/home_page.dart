import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_assets.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_info_list.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking/core/widgets/header.dart';
import 'package:flutter_ticket_booking/core/widgets/hotel_card.dart';
import 'package:flutter_ticket_booking/core/widgets/ticket_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning!',
                          style: AppStyles.headerStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Book tickets.',
                          style: AppStyles.headerStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            AppAssets.logo,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentIcons.search_20_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text(
                        'Search',
                        style: AppStyles.headerStyle4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Header(label: 'Upcoming flights', buttonText: 'View all'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((ticket) => TicketCard(ticket: ticket)).toList(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Header(label: 'Hotels', buttonText: 'View all'),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16, bottom: 20),
            child: Row(
              children: hotelList.map((hotel) => HotelCard(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
