import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import 'checkboxes.dart';
import 'item.dart';

class FilterPopularWidget extends StatelessWidget {
  const FilterPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FilterDialogItemWidget(
      middle: FilterDialogCheckboxesWidget(RecipeFilters.popular),
      text: "POPULAR",
    );
  }
}
