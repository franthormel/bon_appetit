import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';
import '../../../services/index.dart';
import '../../../models/index.dart';

class DetailsBodyTextWidget extends StatelessWidget {
  final String text;
  final InlineTagParser? parser;

  const DetailsBodyTextWidget(
    this.text, {
    this.parser,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = textStyleFromParser(context);

    return Text(text, textAlign: TextAlign.justify, style: style);
  }

  TextStyle? textStyleFromParser(BuildContext context) {
    TextStyle? value = BonAppetitThemeRadley.bodyText1;

    if (parser != null) {
      switch (parser!.tag) {
        case InlineTag.b:
          return value?.copyWith(fontWeight: FontWeight.bold);
        case InlineTag.header:
          return Theme.of(context).textTheme.headline5;
      }
    }

    return value;
  }
}
