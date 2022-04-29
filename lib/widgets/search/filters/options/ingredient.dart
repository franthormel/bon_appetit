import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import 'option.dart';

class SearchPageFiltersOptionsIngredientWidget extends StatelessWidget {
  const SearchPageFiltersOptionsIngredientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersOptionsItemWidget(
      options: RecipeFilters.ingredients,
      text: "INGREDIENT",
      divider: false,
    );
  }
}
