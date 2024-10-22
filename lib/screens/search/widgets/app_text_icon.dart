import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key,required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyles.planeColor,),
          const SizedBox(width: 15,),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}