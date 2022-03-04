import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'horizontal_list_mixin.dart';
import 'horizontal_list_option.dart';

class HorizontalListOptionsWidget extends StatelessWidget
    with HorizontalListMixin {
  final RecipeList type;

  const HorizontalListOptionsWidget(
    this.type, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filter = chooseRecipeFilter(context, type);

    return Wrap(
      spacing: 8.0,
      children: options.map((option) {
        return HorizontalListOptionWidget(
          label: option,
          selected: filter.optionIs(option),
          onSelected: (_) {
            filter.change(option);
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
