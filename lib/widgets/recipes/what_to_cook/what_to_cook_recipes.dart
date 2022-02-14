import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/recipe_dataset.dart';
import 'what_to_cook_recipe.dart';

class WhatToCookRecipesWidget extends StatelessWidget {
  const WhatToCookRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipeDataset = Provider.of<RecipeDataset>(context, listen: false);

    return ListView.separated(
      itemBuilder: (context, index) {
        final recipe = recipeDataset.suggestedRecipes[index];

        return WhatToCookRecipeWidget(recipe: recipe);
      },
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const SizedBox(width: 1.0),
      itemCount: recipeDataset.suggestedRecipes.length,
    );
  }
}
