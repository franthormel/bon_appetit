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

    return DesignedContainerWidget(
      color: BonAppetitColors.floralWhite,
      child: Column(
        children: [
          TodayMainRecipeWidget(recipe: dataset.recipes.main),
          const Divider(color: Colors.transparent),
          OtherMainRecipeWidget(
            recipe: dataset.recipes.others[0],
          ),
          const Divider(color: Colors.transparent),
          OtherMainRecipeWidget(
            recipe: dataset.recipes.others[1],
          ),
          const Divider(color: Colors.transparent),
          OtherMainRecipeWidget(
            recipe: dataset.recipes.others[2],
          ),
        ],
      ),
    );
  }
}
