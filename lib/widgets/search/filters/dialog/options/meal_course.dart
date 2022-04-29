import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../item.dart';

class DialogOptionsMealCourseWidget extends StatelessWidget {
  const DialogOptionsMealCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersDialogItemWidget(
      options: RecipeFilters.mealsCourse,
      text: "MEAL & COURSE",
    );
  }
}
