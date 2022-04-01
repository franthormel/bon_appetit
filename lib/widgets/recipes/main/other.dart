import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../others/inkwell_route_pusher.dart';
import '../others/image.dart';
import '../others/rating.dart';

class OtherMainRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const OtherMainRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkwellRoutePusher(
      route: RecipeDetailsRoute(recipe: recipe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: RecipeImageWidget(recipe)),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipe.title,
                    style: Theme.of(context).textTheme.headline6),
                const SizedBox(height: 12.0),
                if (recipe.rating != null) RecipeRatingWidget(recipe.rating!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
