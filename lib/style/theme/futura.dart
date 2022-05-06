import 'package:flutter/material.dart';

import '../colors.dart';

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
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: BonAppetitColors.black,
          elevation: 0.0,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: BonAppetitColors.black,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: BonAppetitColors.black),
        ),
        errorStyle: TextStyle(
          color: BonAppetitColors.rossoCorsa,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: BonAppetitColors.black),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            backgroundColor: BonAppetitColors.white,
            elevation: 0.0,
            primary: BonAppetitColors.black,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            side: const BorderSide(color: BonAppetitColors.black)),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        circularTrackColor: BonAppetitColors.mediumChampagne,
        color: BonAppetitColors.sizzlingSunrise,
        linearTrackColor: BonAppetitColors.mediumChampagne,
        refreshBackgroundColor: BonAppetitColors.dimGray,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: BonAppetitColors.black),
      ),
      textTheme: _textTheme,
    );
  }

  static TextTheme get _textTheme {
    return const TextTheme(
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
      caption: TextStyle(
        color: BonAppetitColors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      ),
    );
  }
}
