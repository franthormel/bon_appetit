import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../shared/header_body/four.dart';
import '../shared/recipe_image.dart';
import '../shared/recipe_rating.dart';

class TodayMainRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const TodayMainRecipeWidget({
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeImageWidget(imageUrl: recipe.imageUrl, tag: "Today's Recipe"),
        const Divider(color: Colors.transparent),
        HeaderFourBodyWidget(title: recipe.title, body: recipe.description),
        const SizedBox(height: 16.0),
        if (recipe.rating != null) RecipeRatingWidget(rating: recipe.rating!),
      ],
    );
  }
}
