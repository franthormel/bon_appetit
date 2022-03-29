import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';

class DetailsBodyTextWidget extends StatelessWidget {
  final String text;

  const DetailsBodyTextWidget(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: BonAppetitThemeRadley.bodyText1,
    );
  }
}
