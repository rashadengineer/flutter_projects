import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppStyles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppStyles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}'))),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel['place'],
                style: AppStyles.headlineTextStyle2
                    .copyWith(color: Colors.grey.shade500)),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotel['destination'],
                style: AppStyles.headlineTextStyle4
                    .copyWith(color: Colors.white70)),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('${hotel['price']}\$/night',
                style: AppStyles.headlineTextStyle2
                    .copyWith(color: Colors.grey.shade500)),
          ),
        ],
      ),
    );
  }
}
