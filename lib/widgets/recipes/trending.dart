import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/app_state.dart';
import 'shared/horizontal_list/horizontal_list.dart';
import 'shared/horizontal_list/horizontal_list_mixin.dart';

class TrendingRecipesWidget extends StatelessWidget
    with HorizontalListRecipesMixin {
  const TrendingRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListRecipesWidget(
      title: 'Trending Now',
      subtitle: 'These recipes are hot, hot, hot',
      options: RecipeOptions.trendingOptions,
      recipes: filteredRecipes(context),
    );
  }

  @override
  List<Recipe> filteredRecipes(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final appState = Provider.of<AppState>(context);

    // TODO Make this filter part work
    // if (appState.canFilterWhatToCook) {
    //   return dataset.recipes.trending
    //       .where((recipe) => appState.optionsAreWhatToCook(recipe.categories))
    //       .toList();
    // }

    return dataset.recipes.trending;
  }
}
