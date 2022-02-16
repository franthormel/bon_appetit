import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/app_state.dart';
import 'what_to_cook_recipe.dart';

class WhatToCookRecipesWidget extends StatelessWidget {
  const WhatToCookRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final suggestedRecipes = filterRecipes(context);

    return SizedBox(
      height: 400.0,
      child: ListView.separated(
        primary: false,
        itemBuilder: (context, index) {
          final recipe = suggestedRecipes[index];

          return WhatToCookRecipeWidget(recipe: recipe);
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 18.0),
        itemCount: suggestedRecipes.length,
      ),
    );
  }

  List<Recipe> filterRecipes(BuildContext context) {
    final recipeDataset = Provider.of<RecipeDataset>(context, listen: false);
    final appState = Provider.of<AppState>(context);

    if (appState.filterWhatToCook) {
      return recipeDataset.suggestedRecipes
          .where((recipe) => appState.optionsIsWhatToCook(recipe.categories))
          .toList();
    }

    return recipeDataset.suggestedRecipes;
  }
}
