import 'package:flutter/material.dart';

import 'colors.dart';

class BonAppetitThemeFutura {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Futura PT',
      primaryColor: BonAppetitColors.black,
      appBarTheme: const AppBarTheme(backgroundColor: BonAppetitColors.black),
      chipTheme: const ChipThemeData(
        backgroundColor: BonAppetitColors.platinum,
        selectedColor: BonAppetitColors.black,
        labelStyle: TextStyle(
          color: BonAppetitColors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      dividerTheme: const DividerThemeData(color: BonAppetitColors.black),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: BonAppetitColors.black,
          primary: BonAppetitColors.white,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          side: const BorderSide(color: BonAppetitColors.white),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        circularTrackColor: BonAppetitColors.mediumChampagne,
        color: BonAppetitColors.sizzlingSunrise,
        refreshBackgroundColor: BonAppetitColors.dimGray,
      ),
      textTheme: _textTheme,
    );
  }

  static TextTheme get _textTheme {
    return const TextTheme(
      caption: TextStyle(
        color: BonAppetitColors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.1,
      ),
      headline4: TextStyle(
        color: BonAppetitColors.black,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
      headline5: TextStyle(fontWeight: FontWeight.w600),
      headline6: TextStyle(
        color: BonAppetitColors.black,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(color: BonAppetitColors.black, fontSize: 16.0),
      bodyText2: TextStyle(color: BonAppetitColors.black),
      subtitle1: TextStyle(
        color: BonAppetitColors.dimGray,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1.0),
    );
  }
}
