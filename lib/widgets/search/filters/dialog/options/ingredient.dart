import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../item.dart';

class DialogOptionsIngredientWidget extends StatelessWidget {
  const DialogOptionsIngredientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersDialogItemWidget(
      options: RecipeFilters.ingredients,
      text: "INGREDIENT",
      divider: false,
    );
  }
}
