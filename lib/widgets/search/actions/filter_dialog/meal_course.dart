import 'package:flutter/material.dart';

import 'checkboxes.dart';
import 'item.dart';
import 'text.dart';

class FilterMealCourseWidget extends StatelessWidget {
  const FilterMealCourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      header: FilterDialogTextWidget("MEAL & COURSE"),
      middle: FilterDialogCheckboxesWidget(),
    );
  }
}
