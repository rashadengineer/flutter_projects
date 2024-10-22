import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_position_circle.dart';
import 'package:ticket_app/utils/all_json.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Tickets",
              style: AppStyles.headlineTextStyle2,
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTicketTabs(
              firstText: "Upcoming",
              secondText: "Previous",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 180,
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                )),
            Container(
              margin: const EdgeInsets.only(left: 11, right: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: AppStyles.ticketColor,
              child: Column(
                children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilder(
                    randomDivider: 15,
                    isColor: false,
                    width: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "723485 82346712",
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B2SG28",
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        )
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilder(
                    randomDivider: 15,
                    width: 5,
                    isColor: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visaCard,
                                  scale: 11,
                                ),
                                Text(
                                  " **** 4288",
                                  style: AppStyles.headlineTextStyle4,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payment of method",
                              style: AppStyles.headlineTextStyle5,
                            )
                          ],
                        ),
                        const AppColumnTextLayout(
                          topText: "\$249.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        )
                      ]),
                ],
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
                margin: const EdgeInsets.only(left: 11, right: 15),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                        height: 60,
                        drawText: false,
                        data: 'https://rahangroup.com',
                        barcode: Barcode.code128()),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: TicketView(
                  ticket: ticketList[0],
                )),
          ],
        ),
        const TicketPositionCircle(isPos: true),
        const TicketPositionCircle(
          isPos: null,
        )
      ]),
    );
  }
}
