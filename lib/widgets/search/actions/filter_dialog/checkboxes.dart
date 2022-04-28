import 'package:flutter/material.dart';

import 'checkbox.dart';

class FilterDialogCheckboxesWidget extends StatelessWidget {
  final List<String> filters;

  const FilterDialogCheckboxesWidget(
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
      itemBuilder: (context, i) => FilterDialogCheckboxWidget(filters[i]),
      itemCount: filters.length,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
    );
  }
}
