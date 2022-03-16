import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/colors.dart';
import '../others/designed_container.dart';
import 'main/recipe_main.dart';
import 'main/recipe_other.dart';
import 'others/recipe_details_router.dart';

class MainRecipesWidget extends StatelessWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<HomepageDataset>(context, listen: false);
    final recipes = dataset.recipes.main;

    return DesignedContainerWidget(
      color: BonAppetitColors.floralWhite,
      child: Column(
        children: [
          RecipeDetailsRouterWidget(
            child: TodayMainRecipeWidget(recipes[0]),
            recipe: recipes[0],
          ),
          const SizedBox(height: 35.0),
          RecipeDetailsRouterWidget(
            child: OtherMainRecipeWidget(recipes[1]),
            recipe: recipes[1],
          ),
          const SizedBox(height: 35.0),
          RecipeDetailsRouterWidget(
            child: OtherMainRecipeWidget(recipes[2]),
            recipe: recipes[2],
          ),
          const SizedBox(height: 35.0),
          RecipeDetailsRouterWidget(
            child: OtherMainRecipeWidget(recipes[3]),
            recipe: recipes[3],
          ),
        ],
      ),
    );
  }
}
