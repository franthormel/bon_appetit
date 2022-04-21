import 'package:flutter/material.dart';

import 'actions/show.dart';
import 'actions/sort.dart';
import 'results/results.dart';

class SearchPageControlsWidget extends StatelessWidget {
  const SearchPageControlsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SearchPageActionShowWidget(),
            SearchPageActionSortWidget(),
          ],
        ),
        const SizedBox(height: 16.0),
        const SearchPageResultsWidget(),
      ],
    );
  }
}
