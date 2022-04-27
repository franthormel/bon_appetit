import 'package:flutter/material.dart';

import 'checkboxes.dart';
import 'item.dart';
import 'text.dart';

class FilterDietaryConcernsWidget extends StatelessWidget {
  const FilterDietaryConcernsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      header: FilterDialogTextWidget("DIETARY CONCERNS"),
      middle: FilterDialogCheckboxesWidget(),
    );
  }
}
