import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../checkboxes.dart';
import '../item.dart';

class FilterOptionsMealCourseWidget extends StatelessWidget {
  const FilterOptionsMealCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      child: FilterDialogCheckboxesWidget(RecipeFilters.mealsCourse),
      text: "MEAL & COURSE",
    );
  }
}
