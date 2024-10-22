import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstText;
  final String secondText;
  const AppTicketTabs(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(children: [
        AppTabs(tabText: firstText),
        AppTabs(
          tabText: secondText,
          tabBorder: true,
          tabColor: true,
        )
      ]),
    );
  }
}
//'All tickets'
//'Hotels'

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      required this.tabText,
      this.tabBorder = false,
      this.tabColor = false});

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .44,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}