import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import 'checkboxes/checkboxes.dart';
import 'header.dart';

class SearchPageFiltersDialogItemWidget extends StatelessWidget {
  final bool divider;
  final List<String> options;
  final String text;

  const SearchPageFiltersDialogItemWidget({
    required this.options,
    required this.text,
    this.divider = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchPageFiltersDialogHeaderWidget(text),
        const SizedBox(height: 10.0),
        FiltersDialogCheckboxesWidget(options),
        const SizedBox(height: 10.0),
        if (divider) const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
