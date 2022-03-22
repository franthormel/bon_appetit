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
                child: Text(ingredient.count!, textAlign: TextAlign.center),
                width: 20.0,
              )
            : const SizedBox(width: 20.0),
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
