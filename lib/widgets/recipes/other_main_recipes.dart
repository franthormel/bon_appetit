import 'package:bon_appetit/widgets/recipes/recipe_image.dart';
import 'package:flutter/material.dart';

import '../../models/recipe.dart';
import 'recipe_rating.dart';

class OtherMainRecipesWidget extends StatelessWidget {
  final Recipe recipe;

  const OtherMainRecipesWidget({
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
            children: [
              Text(
                recipe.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 12.0),
              RecipeRatingWidget(rating: recipe.rating),
            ],
          ),
        ),
      ],
    );
  }
}
