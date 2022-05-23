import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/index.dart';
import '../others/list_item_entry/recipe.dart';
import 'empty.dart';
import 'list.dart';

class FavoriteRecipesWidget extends StatelessWidget {
  const FavoriteRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final source = Provider.of<DatasetSource>(context, listen: false);
    final provider = Provider.of<FavoritesProvider>(context);
    final favorites = provider.filterFavoriteRecipes(source.recipes);

    if (favorites.isNotEmpty) {
      return FavoritesListWidget(
        children: favorites.map((recipe) {
          return ListItemEntryRecipeWidget(recipe);
        }).toList(),
      );
    }

    return const FavoritesEmptyWidget(text: "recipes");
  }
}
