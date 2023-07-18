import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_info_list.dart';
import 'package:flutter_ticket_booking/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking/core/widgets/column_card.dart';
import 'package:flutter_ticket_booking/core/widgets/ticket_card.dart';
import 'package:flutter_ticket_booking/core/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Tickets",
            style: AppStyles.headerStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketTabs(firstLabel: "Upcoming", secondLabel: "Previous"),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: TicketCard(
              ticket: ticketList[0],
              isColor: true,
            ),
          ),
          const ColumnCard(leftTopText: 'Flutter', leftBottomText: 'Passenger', rightTopText: '1231 15528', rightBottomText: 'Passport'),
          const ColumnCard(
            leftTopText: '26636 894038',
            leftBottomText: 'Number of e-ticket',
            rightTopText: 'B2BG2B',
            rightBottomText: 'Booking code',
          ),
          const ColumnCard(
            leftTopText: 'VISA *** 2462',
            leftBottomText: 'Payment method',
            rightTopText: 'Flutter',
            rightBottomText: 'Passenger',
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BarcodeWidget(
                data: 'https://github.com/martinovovo',
                drawText: false,
                barcode: Barcode.code128(),
                color: AppColors.textColor,
                width: double.maxFinite,
                height: 70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
