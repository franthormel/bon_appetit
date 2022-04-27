import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'checkboxes.dart';
import 'item.dart';

class FilterIngredientWidget extends StatelessWidget {
  const FilterIngredientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      middle: FilterDialogCheckboxesWidget(RecipeFilters.ingredients),
      text: "INGREDIENT",
    );
  }
}
