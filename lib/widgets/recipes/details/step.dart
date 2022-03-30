import 'package:flutter/material.dart';

import '../../../style/theme_radley.dart';

class RecipeDetailStepWidget extends StatelessWidget {
  final int number;
  final String step;

  const RecipeDetailStepWidget({
    required this.number,
    required this.step,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Step $number", style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 8.0),
        Text(step, style: BonAppetitThemeRadley.bodyText1),
      ],
    );
  }
}
