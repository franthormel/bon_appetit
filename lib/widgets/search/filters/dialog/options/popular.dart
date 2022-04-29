import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../item.dart';

class DialogOptionsPopularWidget extends StatelessWidget {
  const DialogOptionsPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersDialogItemWidget(
      options: RecipeFilters.popular,
      text: "POPULAR",
    );
  }
}
