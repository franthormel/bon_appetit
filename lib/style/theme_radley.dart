import 'package:flutter/material.dart';

import 'colors.dart';

class BonAppetitThemeRadley {
  static TextTheme get textTheme {
    return const TextTheme(
      bodyText1: TextStyle(
        color: BonAppetitColors.black,
        fontFamily: 'Radley',
        fontSize: 17.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 1.7,
      ),
    );
  }
}
