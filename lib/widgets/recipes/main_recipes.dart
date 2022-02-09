import 'package:flutter/material.dart';

import '../../services/mock_data.dart';
import 'other_main_recipes.dart';
import 'today_main_recipes.dart';

class MainRecipesWidget extends StatelessWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todayRecipe = MockDataService.todayMainRecipe;
    final otherRecipes = MockDataService.otherMainRecipes;

    return Column(
      children: [
        TodayMainRecipesWidget(recipe: todayRecipe),
        const SizedBox(height: 24.0),
        OtherMainRecipesWidget(recipe: otherRecipes[0]),
        const SizedBox(height: 24.0),
        OtherMainRecipesWidget(recipe: otherRecipes[1]),
        const SizedBox(height: 24.0),
        OtherMainRecipesWidget(recipe: otherRecipes[2]),
      ],
    );
  }
}
