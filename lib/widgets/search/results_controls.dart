import 'package:flutter/material.dart';

import 'show_by_type.dart';
import 'sort_by.dart';

class SearchPageResultsControlsWidget extends StatelessWidget {
  const SearchPageResultsControlsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SearchPageShowByTypeWidget(),
        SearchPageSortByWidget(),
      ],
    );
  }
}
