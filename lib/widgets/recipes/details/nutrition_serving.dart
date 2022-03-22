import 'package:flutter/material.dart';

import '../../../models/index.dart';

class RecipeDetailsNutritionServingWidget extends StatelessWidget {
  final RecipeNutritionServing nutritionServing;

  const RecipeDetailsNutritionServingWidget(
    this.nutritionServing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      nutritionServing.text,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
