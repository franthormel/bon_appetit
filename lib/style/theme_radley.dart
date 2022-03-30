import 'package:flutter/material.dart';

import 'colors.dart';

class BonAppetitThemeRadley {
  static TextStyle? get bodyText1 => _textTheme.bodyText1;

  static TextStyle? get bodyText1Italic =>
      _textTheme.bodyText1?.copyWith(fontStyle: FontStyle.italic);

  static TextTheme get _textTheme {
    return const TextTheme(
      bodyText1: TextStyle(
        color: BonAppetitColors.black,
        fontFamily: 'Radley',
        fontSize: 17.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 1.7,
        letterSpacing: 0.5,
      ),
    );
  }
}
