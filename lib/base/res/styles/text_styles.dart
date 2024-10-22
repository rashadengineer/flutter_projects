import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFD2BDB6);
  static Color ticketTabColor = const Color(0xFFF4F6FD);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTextColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0xFF8ACCF7);
  static Color planeSecondColor = const Color(0xFFBACCF7);

  static TextStyle headlineTextStyle1 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headlineTextStyle2 = const TextStyle(
      fontSize: 27, fontWeight: FontWeight.bold, color: Color(0xFF3b3b3b));

  static TextStyle headlineTextStyle3 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headlineTextStyle4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headlineTextStyle5 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );
}