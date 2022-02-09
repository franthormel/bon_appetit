import 'package:bon_appetit/models/recipe_dataset.dart';
import 'package:flutter/material.dart';

import '../../services/mock_data.dart';
import 'other_main_recipes.dart';
import 'today_main_recipes.dart';

class MainRecipesWidget extends StatefulWidget {
  MainRecipesWidget({Key? key}) : super(key: key);

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
    setState(() async {
      recipeDataset = await MockDataService.recipeDataset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (recipeDataset == null)
        ? const Text('No data')
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
          );
  }
}
