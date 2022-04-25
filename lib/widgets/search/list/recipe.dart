import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import 'item.dart';

class SearchPageListRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const SearchPageListRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchPageListItemWidget(
      category: "RECIPES",
      imageUrl: recipe.imageUrl,
      heroTag: recipe.heroTag,
      route: RecipeDetailsRoute(recipe: recipe),
      title: recipe.title,
    );
  }
}
