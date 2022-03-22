import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';
import 'nutrition_serving.dart';

class RecipeDetailsNutritionServingsWidget extends StatelessWidget {
  final List<RecipeNutritionServing> nutritionServings;

  const RecipeDetailsNutritionServingsWidget(
    this.nutritionServings, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        text: "Nutrition Per Serving",
        child: Wrap(children: children, spacing: 5.0),
      ),
    );
  }

  List<Widget> get children {
    final widgets = <Widget>[];

    for (final nutritionServing in nutritionServings) {
      widgets.add(RecipeDetailsNutritionServingWidget(nutritionServing));
    }

    return widgets;
  }
}
