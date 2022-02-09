import 'package:flutter/material.dart';

import '../../../models/recipe_dataset.dart';
import '../../../services/mock_data.dart';
import '../../../style/colors.dart';
import 'other_main_recipes.dart';
import 'today_main_recipes.dart';

class MainRecipesWidget extends StatefulWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  State<MainRecipesWidget> createState() => _MainRecipesWidgetState();
}

class _MainRecipesWidgetState extends State<MainRecipesWidget> {
  RecipeDataset? recipeDataset;

  @override
  void initState() {
    super.initState();
    loadRecipeDataset();
  }

  Future<void> loadRecipeDataset() async {
    final result = await MockDataService().recipeDataset;

    setState(() {
      recipeDataset = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BonAppetitColors.floralWhite,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      child: (recipeDataset == null)
          ? Container()
          : Column(
              children: [
                TodayMainRecipesWidget(recipe: recipeDataset!.mainRecipe),
                const SizedBox(height: 24.0),
                OtherMainRecipesWidget(
                  recipe: recipeDataset!.otherMainRecipes[0],
                ),
                const SizedBox(height: 24.0),
                OtherMainRecipesWidget(
                  recipe: recipeDataset!.otherMainRecipes[1],
                ),
                const SizedBox(height: 24.0),
                OtherMainRecipesWidget(
                  recipe: recipeDataset!.otherMainRecipes[2],
                ),
              ],
            ),
    );
  }
}
