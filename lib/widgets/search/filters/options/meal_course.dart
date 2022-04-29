import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import 'option.dart';

class SearchFiltersOptionsMealCourseWidget extends StatelessWidget {
  const SearchFiltersOptionsMealCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersOptionsItemWidget(
      options: RecipeFilters.mealsCourse,
      text: "MEAL & COURSE",
    );
  }
}
