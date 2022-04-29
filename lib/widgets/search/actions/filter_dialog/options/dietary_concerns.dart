import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../checkboxes.dart';
import '../item.dart';

class FilterOptionsDietaryConcernWidget extends StatelessWidget {
  const FilterOptionsDietaryConcernWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      child: FilterDialogCheckboxesWidget(RecipeFilters.dietaryConcerns),
      text: "DIETARY CONCERNS",
    );
  }
}
