import 'package:flutter/material.dart';

import 'checkbox.dart';

class SearchPageFiltersOptionsCheckboxesWidget extends StatelessWidget {
  final List<String> filterOptions;

  const SearchPageFiltersOptionsCheckboxesWidget(
    this.filterOptions, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 5,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, i) =>
          SearchPageFiltersOptionsCheckboxWidget(filterOptions[i]),
      itemCount: filterOptions.length,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
    );
  }
}
