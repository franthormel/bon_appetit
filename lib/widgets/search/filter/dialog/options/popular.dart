import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../checkboxes.dart';
import '../item.dart';

class DialogOptionsPopularWidget extends StatelessWidget {
  const DialogOptionsPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFilterDialogItemWidget(
      child: SearchPageFilterDialogCheckboxesWidget(RecipeFilters.popular),
      text: "POPULAR",
    );
  }
}
