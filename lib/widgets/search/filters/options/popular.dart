import 'package:flutter/material.dart';

import '../../../../../models/index.dart';
import 'option.dart';

class SearchFiltersOptionsPopularWidget extends StatelessWidget {
  const SearchFiltersOptionsPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchPageFiltersOptionsItemWidget(
      options: RecipeFilters.popular,
      text: "POPULAR",
    );
  }
}
