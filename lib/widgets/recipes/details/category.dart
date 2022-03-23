import 'package:flutter/material.dart';

import '../../../style/colors.dart';

class RecipeDetailsCategoryWidget extends StatelessWidget {
  final String category;
  final bool isGray;

  const RecipeDetailsCategoryWidget(
    this.category, {
    this.isGray = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: Theme.of(context).textTheme.bodyText1?.apply(color: color),
    );
  }

  Color? get color {
    Color? color;

    if (isGray) {
      color = BonAppetitColors.dimGray;
    }

    return color;
  }
}
