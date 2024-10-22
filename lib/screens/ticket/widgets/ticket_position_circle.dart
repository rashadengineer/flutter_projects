import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class TicketPositionCircle extends StatelessWidget {
  final bool? isPos;
  const TicketPositionCircle({super.key, this.isPos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: isPos == true ? 22 : null,
        right: isPos == true ? null : 22,
        top: 235,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2),
              color: AppStyles.ticketColor),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
