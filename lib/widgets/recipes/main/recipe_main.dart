import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_body/header_body_four.dart';
import '../others/recipe_image.dart';
import '../others/recipe_rating.dart';

class TodayMainRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const TodayMainRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeImageWidget(recipe.imageUrl, tag: "Today's Recipe"),
        const Divider(color: Colors.transparent),
        HeaderFourBodyWidget(title: recipe.title, body: recipe.description),
        const SizedBox(height: 16.0),
        if (recipe.rating != null) RecipeRatingWidget(recipe.rating!),
      ],
    );
  }
}
