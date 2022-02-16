import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../header_body.dart';
import '../recipe_image.dart';
import '../recipe_rating.dart';

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
        RecipeImageWidget(imageUrl: recipe.imageUrl, tag: recipe.tag),
        const Divider(color: Colors.transparent),
        HeaderBodyWidget(title: recipe.title, body: recipe.description),
        const SizedBox(height: 16.0),
        if (recipe.rating != null) RecipeRatingWidget(rating: recipe.rating!),
      ],
    );
  }
}
