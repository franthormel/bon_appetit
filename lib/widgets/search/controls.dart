import 'package:flutter/material.dart';

import 'actions/show.dart';
import 'actions/sort.dart';
import 'results_count.dart';

class SearchPageControlsWidget extends StatelessWidget {
  const SearchPageControlsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SearchPageActionShowWidget(),
            SearchPageActionSortWidget(),
          ],
        ),
        const SearchPageResultsCountWidget(),
      ],
    );
  }
}
