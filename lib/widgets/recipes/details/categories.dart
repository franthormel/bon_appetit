import 'package:flutter/material.dart';

import '../../others/horizontal_padding.dart';
import 'category.dart';

class RecipeDetailsCategoriesWidget extends StatelessWidget {
  final List<String> categories;

  const RecipeDetailsCategoriesWidget(
    this.categories, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalPaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(children: children, spacing: 15.0, runSpacing: 10.0),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  List<RecipeDetailsCategoryWidget> get children {
    final widgets = <RecipeDetailsCategoryWidget>[
      const RecipeDetailsCategoryWidget("Explore Bon Appétit", isGray: true)
    ];

    widgets.addAll(categories.map<RecipeDetailsCategoryWidget>(
        (category) => RecipeDetailsCategoryWidget(category)));

    return widgets;
  }
}
