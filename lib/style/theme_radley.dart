import 'package:flutter/material.dart';

class BonAppetitThemeRadley {
  static TextStyle? get bodyText1 => _textTheme.bodyText1;

  static TextStyle? get bodyText1Italic =>
      _textTheme.bodyText1?.copyWith(fontStyle: FontStyle.italic);

  static TextTheme get _textTheme {
    return const TextTheme(
      bodyText1: TextStyle(fontFamily: 'Radley', fontSize: 17.0, height: 1.8),
    );
  }
}
