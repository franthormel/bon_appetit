import 'package:flutter/material.dart';

import 'checkbox.dart';

class SearchFiltersOptionsCheckboxesWidget extends StatelessWidget {
  final List<String> filterOptions;

  const SearchFiltersOptionsCheckboxesWidget(
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
          SearchFiltersOptionsCheckboxWidget(filterOptions[i]),
      itemCount: filterOptions.length,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
    );
  }
}
