import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/utils/app_colors.dart';
import 'package:flutter_ticket_booking/core/utils/app_layout.dart';
import 'package:flutter_ticket_booking/core/utils/app_styles.dart';
import 'package:flutter_ticket_booking/core/widgets/ring_container.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketCard({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.80,
      height: 173,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
                color: isColor == null ? AppColors.primary : Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null ? AppStyles.headerStyle3.copyWith(color: Colors.white) : AppStyles.headerStyle3,
                      ),
                      Expanded(child: Container()),
                      RingContainer(
                        isColor: isColor == null,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6).floor(),
                                      (index) => Text(
                                        "-",
                                        style: TextStyle(color: isColor == null ? Colors.white : const Color(0xff8accf7)),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport, color: isColor == null ? Colors.white : const Color(0xff8accf7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RingContainer(isColor: isColor == null),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null ? AppStyles.headerStyle3.copyWith(color: Colors.white) : AppStyles.headerStyle3,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? AppColors.orangeColor : Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: isColor == null ? Colors.white : Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppColors.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor == null ? 21 : 0), bottomRight: Radius.circular(isColor == null ? 21 : 0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style: isColor == null ? AppStyles.headerStyle3.copyWith(color: Colors.white) : AppStyles.headerStyle3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Date',
                        style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket['departure_time'],
                        style: isColor == null ? AppStyles.headerStyle3.copyWith(color: Colors.white) : AppStyles.headerStyle3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Departure time',
                        style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['number'].toString(),
                        style: isColor == null ? AppStyles.headerStyle3.copyWith(color: Colors.white) : AppStyles.headerStyle3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Number',
                        style: isColor == null ? AppStyles.headerStyle4.copyWith(color: Colors.white) : AppStyles.headerStyle4,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
