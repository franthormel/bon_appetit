import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';
import '../horizontal_padding.dart';

class DetailsBodyTextWidget extends StatelessWidget {
  final String description;

  const DetailsBodyTextWidget(this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(description, style: BonAppetitThemeRadley.bodyText1),
    );
  }
}
