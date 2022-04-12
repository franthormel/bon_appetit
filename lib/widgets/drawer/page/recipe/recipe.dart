import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'recipe_description.dart';
import 'recipe_image.dart';
import 'recipe_rating.dart';
import 'recipe_title.dart';
import '../../../others/separator.dart';

class DrawerPageRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const DrawerPageRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerPageRecipeImageWidget(
          heroTag: recipe.heroTag,
          imageUrl: recipe.imageUrl,
        ),
        const SeparatorWidget(value: 15.0),
        DrawerPageRecipeTitleWidget(recipe.title),
        const SeparatorWidget(value: 15.0),
        DrawerPageRecipeDescriptionWidget(recipe.description),
        const SeparatorWidget(value: 15.0),
        if (recipe.rating != null) DrawerPageRecipeRatingWidget(recipe.rating!),
      ],
    );
  }
}
