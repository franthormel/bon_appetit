import 'package:flutter/material.dart';

import 'actions/show.dart';
import 'actions/sort.dart';

class SearchPageControlsWidget extends StatelessWidget {
  const SearchPageControlsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        SearchPageActionSortWidget(),
        SearchPageActionShowWidget(),
      ],
    );
  }
}
