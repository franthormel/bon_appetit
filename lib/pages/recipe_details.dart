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
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: ListView.separated(
            padding: const EdgeInsets.only(bottom: 35.0, top: 21.0),
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
            separatorBuilder: (context, index) => const SizedBox(height: 15.0),
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
      const RecipeDetailsDividerWidget(),
      if (recipe.rating != null) RecipeDetailsRatingWidget(recipe.rating!),
      const RecipeDetailsReadReviewsWidget(),
      RecipeDetailsImageWidget(
        imageUrl: recipe.imageUrl,
        heroTag: recipe.heroTag,
      ),
      RecipeDetailsTimeWidget(),
      RecipeDetailsDescriptionWidget(),
      RecipeDetailsUtensilsWidget(),
      RecipeDetailsIngredientsWidget(),
      RecipeDetailsServingsWidget(),
      RecipeDetailsStepsWidget(),
      RecipeDetailsNutritionWidget(),
      const RecipeDetailsRateRecipeWidget(),
      const RecipeDetailsLeaveReviewWidget(),
      RecipeDetailsCategoriesWidget(),
    ];
  }
}
