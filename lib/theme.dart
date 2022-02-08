import 'package:flutter/material.dart';

class BonAppetitColors {
  static const sizzlingSunrise = Color(0xFFFFDA08);
  static const mediumChampagne = Color(0xFFFEE6A3);

  static const floralWhite = Color(0xFFFAF9F0);
  static const platinum = Color(0xFFE5E5E5);
  static const dimGray = Color(0xFF666666);

  static const black = Colors.black;
  static const white = Colors.white;
}

class BonAppetitTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Futura PT',
      primaryColor: BonAppetitColors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: BonAppetitColors.black,
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: BonAppetitColors.sizzlingSunrise,
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(
          color: BonAppetitColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
