import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../services/index.dart';
import 'horizontal_list_mixin.dart';
import 'horizontal_list_recipe.dart';

class HorizontalListRecipeContentsWidget extends StatelessWidget
    with HorizontalListMixin {
  final RecipeList type;

  const HorizontalListRecipeContentsWidget({
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final filter = decidedRecipeFilterType(context, type);
    final recipes = filteredRecipes(filter, dataset.recipe);

    return SizedBox(
      height: 400.0,
      child: ListView.separated(
        controller: filter.scrollController,
        itemBuilder: (context, index) => HorizontalListRecipeWidget(
          recipe: recipes[index],
        ),
        itemCount: recipes.length,
        primary: false,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 18.0),
      ),
    );
  }

  List<Recipe> filteredRecipes(RecipeFilter filter, RecipeDataset dataset) {
    final recipes = recipeSource(dataset);

    if (filter.shouldFilter) {
      return recipes
          .where((recipe) => filter.recipeOptionIsIn(recipe.categories))
          .toList();
    }

    return recipes;
  }

  List<Recipe> recipeSource(RecipeDataset recipes) {
    switch (type) {
      case RecipeList.suggested:
        return recipes.suggested;
      case RecipeList.trending:
        return recipes.trending;
    }
  }
}
