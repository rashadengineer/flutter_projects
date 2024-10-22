import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/text_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: isColor == null
            ? AppStyles.headlineTextStyle4.copyWith(color: Colors.white)
            : AppStyles.headlineTextStyle4);
  }
}
