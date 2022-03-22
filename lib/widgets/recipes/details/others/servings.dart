import 'package:flutter/material.dart';

import '../../../../style/colors.dart';

class RecipeDetailsServingsWidget extends StatelessWidget {
  final String servings;

  const RecipeDetailsServingsWidget(
    this.servings, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      color: BonAppetitColors.sizzlingSunrise,
      child: Text(servings, style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
