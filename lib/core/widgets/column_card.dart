import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/core/widgets/column_text.dart';

class ColumnCard extends StatelessWidget {
  final String leftTopText;
  final String leftBottomText;
  final String rightTopText;
  final String rightBottomText;
  const ColumnCard({
    super.key,
    required this.leftTopText,
    required this.leftBottomText,
    required this.rightTopText,
    required this.rightBottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnText(
                topText: leftTopText,
                bottomText: leftBottomText,
                alignment: CrossAxisAlignment.start,
              ),
              ColumnText(
                topText: rightTopText,
                bottomText: rightBottomText,
                alignment: CrossAxisAlignment.end,
              ),
            ],
          )
        ],
      ),
    );
  }
}
