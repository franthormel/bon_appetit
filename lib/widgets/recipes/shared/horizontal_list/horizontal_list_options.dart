import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../services/index.dart';
import 'horizontal_list_mixin.dart';
import 'horizontal_list_option.dart';

class HorizontalListOptionsWidget extends StatelessWidget
    with HorizontalListMixin {
  @override
  final RecipeList type;

  const HorizontalListOptionsWidget({
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    final filter = filterRecipeOption(appState);

    return Wrap(
      spacing: 8.0,
      children: options.map((option) {
        return HorizontalListOptionWidget(
          label: option,
          selected: filter.recipeOptionIs(option),
          onSelected: (_) {
            filter.changeRecipeOptionTo(option);
          },
        );
      }).toList(),
    );
  }

  List<String> get options {
    switch (type) {
      case RecipeList.suggested:
        return RecipeOptions.suggestedOptions;
      case RecipeList.trending:
        return RecipeOptions.trendingOptions;
    }
  }
}
