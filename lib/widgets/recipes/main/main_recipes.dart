import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../style/colors.dart';
import '../../designed_container.dart';
import 'other_main_recipe.dart';
import 'today_main_recipe.dart';

class MainRecipesWidget extends StatelessWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipeDataset = Provider.of<RecipeDataset>(context, listen: false);

    return DesignedContainerWidget(
      color: BonAppetitColors.floralWhite,
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
