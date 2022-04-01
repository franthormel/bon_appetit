import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class RecipeDetailsPage extends StatelessWidget with DetailsContentsMixin {
  final Recipe recipe;

  const RecipeDetailsPage(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsContentsWidget(children: children);
  }

  @override
  List<Widget> get children {
    return [
      DetailsCategoryIssueWidget("Recipes", issue: recipe.issue),
      DetailsTitleWidget(recipe.title),
      DetailsAuthorDateWidget(
        author: recipe.author,
        dateUploaded: recipe.dateUploaded,
      ),
      if (recipe.rating != null) RecipeDetailsRatingWidget(recipe.rating!),
      const RecipeDetailsReadReviewsWidget(),
      CachedHeroImageWidget(heroTag: recipe.heroTag, imageUrl: recipe.imageUrl),
      if (recipe.timeEntries != null)
        RecipeDetailsTimeEntriesWidget(recipe.timeEntries!),
      DetailsBodyTextPaddedWidget(recipe.description),
      if (recipe.utensils != null && recipe.utensils!.isNotEmpty)
        RecipeDetailsUtensilsWidget(recipe.utensils!),
      RecipeDetailsIngredientsWidget(
        ingredients: recipe.ingredients,
        servings: recipe.servings,
      ),
      RecipeDetailsStepsWidget(recipe.steps),
      if (recipe.nutritionServings != null)
        RecipeDetailsNutritionServingsWidget(recipe.nutritionServings!),
      RecipeDetailsRateRecipeWidget(recipe.title),
      const RecipeDetailsLeaveReviewWidget(),
      if (recipe.reviews != null)
        RecipeDetailsUserReviewsWidget(recipe.reviews!),
      DetailsCategoriesWidget(recipe.categories),
    ];
  }
}
