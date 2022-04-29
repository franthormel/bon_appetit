import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import 'option.dart';

class SearchFiltersOptionsIngredientWidget extends StatelessWidget {
  const SearchFiltersOptionsIngredientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersOptionsItemWidget(
      options: RecipeFilters.ingredients,
      text: "INGREDIENT",
      divider: false,
    );
  }
}
