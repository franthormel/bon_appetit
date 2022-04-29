import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../checkboxes.dart';
import '../item.dart';

class FilterOptionsPopularWidget extends StatelessWidget {
  const FilterOptionsPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      child: FilterDialogCheckboxesWidget(RecipeFilters.popular),
      text: "POPULAR",
    );
  }
}
