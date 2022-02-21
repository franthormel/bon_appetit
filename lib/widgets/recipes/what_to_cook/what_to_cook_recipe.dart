import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../recipe_image.dart';
import '../recipe_rating.dart';

class WhatToCookRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const WhatToCookRecipeWidget({
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeImageWidget(
            imageUrl: recipe.imageUrl,
            tag: recipe.tag,
          ),
          const Divider(color: Colors.transparent),
          Expanded(
            child: Text(
              recipe.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const Divider(color: Colors.transparent),
          if (recipe.rating != null) RecipeRatingWidget(rating: recipe.rating!),
        ],
      ),
    );
  }
}
