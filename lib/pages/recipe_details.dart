import 'package:flutter/material.dart';

import '../models/index.dart';
import '../widgets/index.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsPage(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 35.0, top: 21.0),
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          ),
        ),
      ),
    );
  }

  List<Widget> get children {
    return [
      RecipeDetailsIssueWidget(recipe.issue),
      RecipeDetailsTitleWidget(recipe.title),
      if (recipe.author != null) RecipeDetailsAuthorWidget(recipe.author!),
      RecipeDetailsDateUploadedWidget(recipe.dateUploaded),
      if (recipe.rating != null) RecipeDetailsRatingWidget(recipe.rating!),
      const RecipeDetailsReadReviewsWidget(),
      RecipeDetailsImageWidget(
        imageUrl: recipe.imageUrl,
        heroTag: recipe.heroTag,
      ),
      if (recipe.timeEntries != null)
        RecipeDetailsTimeEntriesWidget(recipe.timeEntries!),
      RecipeDetailsDescriptionWidget(recipe.description),
      if (recipe.utensils != null)
        RecipeDetailsUtensilsWidget(recipe.utensils!),
      RecipeDetailsIngredientsWidget(
        ingredients: recipe.ingredients,
        servings: recipe.servings,
      ),
      RecipeDetailsStepsWidget(recipe.steps),
      if (recipe.nutritionServings != null)
        RecipeDetailsNutritionServingsWidget(recipe.nutritionServings!),
      const RecipeDetailsRateRecipeWidget(),
      const RecipeDetailsLeaveReviewWidget(),
      if (recipe.reviews != null)
        RecipeDetailsUserReviewsWidget(recipe.reviews!),
      RecipeDetailsCategoriesWidget(),
    ];
  }
}
