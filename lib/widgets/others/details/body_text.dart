import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';
import '../../../style/theme_radley.dart';

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
    return Text(text, style: textStyleFromParser(context));
  }

  TextStyle? textStyleFromParser(BuildContext context) {
    TextStyle? value = BonAppetitThemeRadley.bodyText1;

    if (parser != null) {
      switch (parser!.tag) {
        case InlineTag.b:
          return value?.copyWith(fontWeight: FontWeight.bold);
        case InlineTag.header:
          return Theme.of(context)
              .textTheme
              .headline5
              ?.apply(fontSizeDelta: 4.0);
      }
    }

    return value;
  }
}
