import 'package:flutter/material.dart';

import 'checkbox.dart';

class SearchPageFilterDialogCheckboxesWidget extends StatelessWidget {
  final List<String> filters;

  const SearchPageFilterDialogCheckboxesWidget(
    this.filters, {
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
          SearchPageFilterDialogCheckboxWidget(filters[i]),
      itemCount: filters.length,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
    );
  }
}
