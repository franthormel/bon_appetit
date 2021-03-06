import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../style/index.dart';
import '../others/designed_container.dart';
import 'main/other.dart';
import 'main/today.dart';

class MainRecipesWidget extends StatelessWidget {
  const MainRecipesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataset = Provider.of<DatasetHomepage>(context, listen: false);
    final recipes = dataset.recipes.main;

    return DesignedContainerWidget(
      color: BonAppetitColors.floralWhite,
      child: Column(
        children: [
          TodayMainRecipeWidget(recipes[0]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipes[1]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipes[2]),
          const SizedBox(height: 35.0),
          OtherMainRecipeWidget(recipes[3]),
        ],
      ),
    );
  }
}
