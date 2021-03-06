import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../router/index.dart';
import '../../../../services/index.dart';
import '../../../others/page_route_pusher.dart';
import 'list_recipe.dart';
import 'mixin.dart';

class HorizontalListRecipeContentsWidget extends StatelessWidget
    with HorizontalListMixin {
  final RecipeList type;

  const HorizontalListRecipeContentsWidget(
    this.type, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);
    final filter = chooseRecipeFilter(context, type);
    final recipes = filteredRecipes(filter, dataset.recipes);

    return SizedBox(
      height: 400.0,
      child: ListView.separated(
        controller: filter.scrollController,
        itemBuilder: (context, i) {
          final recipe = recipes[i];

          return PageRoutePusherWidget(
            callback: () {
              FirebaseAnalyticsService.logSelectedRecipe(recipe);
            },
            route: RecipeDetailsRoute(recipe: recipe),
            child: HorizontalListRecipeWidget(recipe),
          );
        },
        itemCount: recipes.length,
        primary: false,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, i) => const SizedBox(width: 25.0),
      ),
    );
  }

  List<Recipe> filteredRecipes(FilterProvider filter, DatasetRecipe dataset) {
    final recipes = recipeSource(dataset);

    if (filter.shouldFilter) {
      return recipes
          .where((recipe) => filter.optionIsIn(recipe.categories))
          .toList();
    }

    return recipes;
  }

  List<Recipe> recipeSource(DatasetRecipe recipes) {
    switch (type) {
      case RecipeList.suggested:
        return recipes.suggested;
      case RecipeList.trending:
        return recipes.trending;
    }
  }
}
