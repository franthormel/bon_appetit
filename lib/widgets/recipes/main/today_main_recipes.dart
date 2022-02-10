import 'package:flutter/material.dart';

import '../../../models/recipe.dart';
import '../recipe_image.dart';
import '../recipe_rating.dart';

class TodayMainRecipesWidget extends StatelessWidget {
  final Recipe recipe;

  const TodayMainRecipesWidget({
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeImageWidget(
          imageUrl: recipe.imageUrl,
          tag: recipe.tag,
        ),
        const SizedBox(height: 16.0),
        Text(
          recipe.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: 16.0),
        Text(
          recipe.description,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(height: 16.0),
        if (recipe.rating != null) RecipeRatingWidget(rating: recipe.rating!),
      ],
    );
  }
}
