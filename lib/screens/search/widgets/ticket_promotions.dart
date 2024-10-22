import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class TicketPromotions extends StatelessWidget {
  const TicketPromotions({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: size.width * .42,
            height: 435,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2)
                ]),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.planeSit),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                    "20%\ndiscount on the early booking of this flight. Don't miss",
                    style: AppStyles.headlineTextStyle2.copyWith(fontSize: 23))
              ],
            )),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * .44,
                  height: 210,
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFF3AB888),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 2)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey",
                          style: AppStyles.headlineTextStyle2
                              .copyWith(color: Colors.white, fontSize: 23)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Take the survey\nabout our\nservices and get\ndiscount",
                        style: AppStyles.headlineTextStyle1
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: size.width * .44,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xFFEC6545)),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headlineTextStyle2
                        .copyWith(color: Colors.white),
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '😘',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '😍',
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '🤩',
                          style: TextStyle(fontSize: 30),
                        ),
                      ])
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
