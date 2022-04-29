import 'package:flutter/material.dart';

import 'options/dietary_concerns.dart';
import 'options/ingredient.dart';
import 'options/meal_course.dart';
import 'options/popular.dart';
import 'title.dart';

class FilterDialogListWidget extends StatelessWidget {
  const FilterDialogListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
      primary: true,
      itemBuilder: (context, i) => children[i],
      itemCount: children.length,
      separatorBuilder: (context, i) => const SizedBox(height: 10.0),
    );
  }

  List<Widget> get children {
    return const [
      FilterDialogTitleWidget(),
      FilterOptionsPopularWidget(),
      FilterOptionsMealCourseWidget(),
      FilterOptionsDietaryConcernWidget(),
      FilterOptionsIngredientWidget(),
    ];
  }
}
