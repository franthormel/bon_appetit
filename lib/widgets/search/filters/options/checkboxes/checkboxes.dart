import 'package:flutter/material.dart';

import 'checkbox.dart';

class SearchFiltersOptionsCheckboxesWidget extends StatelessWidget {
  final List<String> options;

  const SearchFiltersOptionsCheckboxesWidget(
    this.options, {
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
          SearchFiltersOptionsCheckboxWidget(options[i]),
      itemCount: options.length,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
    );
  }
}
