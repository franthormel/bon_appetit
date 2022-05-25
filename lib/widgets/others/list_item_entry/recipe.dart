import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../../services/index.dart';
import 'list_item_entry.dart';

class ListItemEntryRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const ListItemEntryRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListItemEntryWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedRecipe(recipe);
      },
      category: "RECIPES",
      imageUrl: recipe.imageUrl,
      heroTag: recipe.heroTag,
      route: RecipeDetailsRoute(recipe: recipe),
      title: recipe.title,
    );
  }
}
