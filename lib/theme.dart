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

ThemeData get theme {
  final theme = ThemeData.light();

  return theme.copyWith(
    appBarTheme: theme.appBarTheme.copyWith(
      backgroundColor: BonAppetitColors.black,
    ),
  );
}
