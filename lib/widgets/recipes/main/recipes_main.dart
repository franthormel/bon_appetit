import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../style/colors.dart';
import '../../designed_container.dart';
import 'recipe_main.dart';
import 'recipe_other.dart';

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
          TodayMainRecipeWidget(recipe: recipes[0]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipe: recipes[1]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipe: recipes[2]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipe: recipes[3]),
        ],
      ),
    );
  }
}
