import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'recipe_description.dart';
import 'recipe_image.dart';
import 'recipe_rating.dart';
import 'recipe_title.dart';

class DrawerPageRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const DrawerPageRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerPageRecipeImageWidget(recipe.imageUrl),
        DrawerPageRecipeTitleWidget(recipe.title),
        DrawerPageRecipeDescriptionWidget(recipe.description),
        if (recipe.rating != null) DrawerPageRecipeRatingWidget(recipe.rating!),
      ],
    );
  }
}
