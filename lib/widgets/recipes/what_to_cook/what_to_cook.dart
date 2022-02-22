import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/app_state.dart';
import '../shared/horizontal_list/horizontal_list.dart';

// Suggested recipes.
// Appears below main recipes
// Second from the top.
class WhatToCookWidget extends StatelessWidget {
  const WhatToCookWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListRecipesWidget(
      title: 'What to cook tonight',
      subtitle: 'Fast, fresh and foolproof',
      options: RecipeOptions.suggestedOptions,
      recipes: filteredRecipes(context),
    );
  }

  // TODO Make a MIXIN for this and Trending recipes
  List<Recipe> filteredRecipes(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final appState = Provider.of<AppState>(context);

    if (appState.canFilterWhatToCook) {
      return dataset.recipes.suggested
          .where((recipe) => appState.optionsAreWhatToCook(recipe.categories))
          .toList();
    }

    return dataset.recipes.suggested;
  }
}
