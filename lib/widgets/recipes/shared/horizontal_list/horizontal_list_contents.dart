import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'horizontal_list_recipe.dart';

class HorizontalListRecipeContentsWidget extends StatelessWidget {
  final ScrollController? controller;
  final List<Recipe> recipes;

  const HorizontalListRecipeContentsWidget({
    required this.recipes,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: ListView.separated(
        controller: controller,
        primary: false,
        itemBuilder: (context, index) => HorizontalListRecipeWidget(
          recipe: recipes[index],
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 18.0),
        itemCount: recipes.length,
      ),
    );
  }
}
