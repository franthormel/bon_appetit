import 'package:bon_appetit/widgets/recipes/recipe_image.dart';
import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../recipe_rating.dart';

class OtherMainRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const OtherMainRecipeWidget({
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: RecipeImageWidget(
            imageUrl: recipe.imageUrl,
            tag: recipe.tag,
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipe.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 12.0),
              if (recipe.rating != null)
                RecipeRatingWidget(rating: recipe.rating!),
            ],
          ),
        ),
      ],
    );
  }
}
