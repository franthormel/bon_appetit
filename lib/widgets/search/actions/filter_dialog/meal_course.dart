import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'checkboxes.dart';
import 'item.dart';

class FilterMealCourseWidget extends StatelessWidget {
  const FilterMealCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      child: FilterDialogCheckboxesWidget(RecipeFilters.mealsCourse),
      text: "MEAL & COURSE",
    );
  }
}
