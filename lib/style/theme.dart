import 'package:flutter/material.dart';

import 'colors.dart';

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
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        circularTrackColor: BonAppetitColors.mediumChampagne,
        color: BonAppetitColors.sizzlingSunrise,
        refreshBackgroundColor: BonAppetitColors.dimGray,
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(
          color: BonAppetitColors.black,
          fontWeight: FontWeight.w600,
        ),
        headline6: TextStyle(
          color: BonAppetitColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
