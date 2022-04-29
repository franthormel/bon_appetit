import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import 'option.dart';

class SearchFiltersOptionsDietaryConcernWidget extends StatelessWidget {
  const SearchFiltersOptionsDietaryConcernWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersDialogItemWidget(
      options: RecipeFilters.dietaryConcerns,
      text: "DIETARY CONCERNS",
    );
  }
}
