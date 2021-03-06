import 'package:flutter/material.dart';

import '../../../../style/index.dart';
import '../header.dart';
import 'checkboxes/checkboxes.dart';

class SearchPageFiltersOptionsItemWidget extends StatelessWidget {
  final bool divider;
  final List<String> options;
  final String text;

  const SearchPageFiltersOptionsItemWidget({
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
        SearchPageFiltersHeaderWidget(text),
        const SizedBox(height: 10.0),
        SearchPageFiltersOptionsCheckboxesWidget(options),
        const SizedBox(height: 10.0),
        if (divider) const Divider(color: BonAppetitColors.platinum),
      ],
    );
  }
}
