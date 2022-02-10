import 'package:bon_appetit/models/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../style/colors.dart';
import 'other_main_recipe.dart';
import 'today_main_recipe.dart';

class MainRecipesWidget extends StatelessWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipeDataset = context.watch<RecipeDataset?>();

    return (recipeDataset == null) ? Container() : Container(
      color: BonAppetitColors.floralWhite,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      child: Column(
        children: [
          TodayMainRecipeWidget(recipe: recipeDataset.mainRecipe),
          const SizedBox(height: 24.0),
          OtherMainRecipeWidget(
            recipe: recipeDataset.otherMainRecipes[0],
          ),
          const SizedBox(height: 24.0),
          OtherMainRecipeWidget(
            recipe: recipeDataset.otherMainRecipes[1],
          ),
          const SizedBox(height: 24.0),
          OtherMainRecipeWidget(
            recipe: recipeDataset.otherMainRecipes[2],
          ),
        ],
      ),
    );
  }
}
