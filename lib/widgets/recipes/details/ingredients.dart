import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../others/header_details.dart';
import '../../others/horizontal_padding.dart';
import 'others/ingredient.dart';
import 'others/servings.dart';

class RecipeDetailsIngredientsWidget extends StatelessWidget {
  final String servings;
  final List<RecipeIngredient> ingredients;

  const RecipeDetailsIngredientsWidget({
    required this.ingredients,
    required this.servings,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: HeaderDetailsWidget(
        text: "Ingredients",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [RecipeDetailsServingsWidget(servings), ...children],
        ),
      ),
    );
  }

  List<Widget> get children {
    final widgets = <Widget>[];

    for (final ingredient in ingredients) {
      widgets.addAll([
        const SizedBox(height: 10.0),
        RecipeDetailsIngredientWidget(ingredient),
      ]);
    }

    return widgets;
  }
}
