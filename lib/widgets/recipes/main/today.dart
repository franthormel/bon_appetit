import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../router/index.dart';
import '../../../services/index.dart';
import '../../others/header_body/four.dart';
import '../../others/page_route_pusher.dart';
import '../others/image.dart';
import '../others/rating.dart';

class TodayMainRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const TodayMainRecipeWidget(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageRoutePusherWidget(
      callback: () {
        FirebaseAnalyticsService.logSelectedRecipe(recipe);
      },
      route: RecipeDetailsRoute(recipe: recipe),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeImageWidget(recipe, tag: "Today's Recipe"),
          const Divider(color: Colors.transparent),
          HeaderBodyFourWidget(
              title: recipe.title, body: recipe.mainDescription!),
          const SizedBox(height: 16.0),
          if (recipe.rating != null) RecipeRatingWidget(recipe.rating!),
        ],
      ),
    );
  }
}
