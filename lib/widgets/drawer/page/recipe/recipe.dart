import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../../router/index.dart';
import '../../../others/page_route_pusher.dart';
import '../../../others/separator.dart';
import 'recipe_button.dart';
import 'recipe_description.dart';
import 'recipe_image.dart';
import 'recipe_rating.dart';
import 'recipe_title.dart';

class DrawerPageRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const DrawerPageRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageRoutePusherWidget(
      route: RecipeDetailsRoute(recipe: recipe),
      child: Column(
        children: [
          DrawerPageRecipeImageWidget(
            heroTag: recipe.heroTag,
            imageUrl: recipe.imageUrl,
          ),
          const SeparatorWidget(value: 15.0),
          DrawerPageRecipeTitleWidget(recipe.title),
          if (recipe.mainDescription != null)
            DrawerPageRecipeDescriptionWidget(recipe.mainDescription!),
          const SeparatorWidget(value: 15.0),
          const DrawerPageRecipeButtonWidget(),
          const SeparatorWidget(value: 15.0),
          if (recipe.rating != null)
            DrawerPageRecipeRatingWidget(recipe.rating!),
        ],
      ),
    );
  }
}
