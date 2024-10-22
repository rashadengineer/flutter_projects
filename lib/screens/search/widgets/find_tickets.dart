import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.findTextColor
      ),
      child: const Center(child: Text("find tickets" , style: TextStyle(color: Colors.white))),
    );
  }
}