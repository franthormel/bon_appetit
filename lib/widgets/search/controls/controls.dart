import 'package:flutter/material.dart';

import '../results/results.dart';
import 'show.dart';
import 'sort.dart';

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
            SearchPageControlShowWidget(),
            SearchPageControlsSortWidget(),
          ],
        ),
        const SizedBox(height: 16.0),
        const SearchPageResultsWidget(),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
