import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotions.dart';
import 'package:ticket_app/utils/app_routes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: Text("What are\nyou looking for?",
                  style: AppStyles.headlineTextStyle2.copyWith(fontSize: 32))),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstText: 'All Tickets',
            secondText: 'Hotels',
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const SizedBox(
            height: 20,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(context, AppRoutes.allHotels)),
          const SizedBox(
            height: 25,
          ),
          const TicketPromotions(),
        ],
      ),
    );
  }
}
