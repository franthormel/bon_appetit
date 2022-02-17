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
        backgroundColor: BonAppetitColors.platinum,
        selectedColor: BonAppetitColors.black,
        labelStyle: TextStyle(
          color: BonAppetitColors.black,
          fontWeight: FontWeight.w500,
        ),
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
        subtitle1: TextStyle(
          color: BonAppetitColors.dimGray,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
        )
      ),
    );
  }
}
