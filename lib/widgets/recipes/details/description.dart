import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';
import '../../others/horizontal_padding.dart';

class RecipeDetailsDescriptionWidget extends StatelessWidget {
  final String description;

  const RecipeDetailsDescriptionWidget(
    this.description, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Text(description, style: BonAppetitThemeRadley.bodyText1),
    );
  }
}
