import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import '../item.dart';

class DialogOptionsDietaryConcernWidget extends StatelessWidget {
  const DialogOptionsDietaryConcernWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersDialogItemWidget(
      options: RecipeFilters.dietaryConcerns,
      text: "DIETARY CONCERNS",
    );
  }
}
