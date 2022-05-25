import 'package:flutter/material.dart';

import '../../../models/index.dart';

class RecipeDetailsIngredientWidget extends StatelessWidget {
  final RecipeIngredient ingredient;

  const RecipeDetailsIngredientWidget(
    this.ingredient, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ingredient.count != null
            ? SizedBox(
                width: 25.0,
                child: Text(ingredient.count!, textAlign: TextAlign.center),
              )
            : const SizedBox(width: 25.0),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text(
            ingredient.ingredient,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
