import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../services/index.dart';

class SearchPageFiltersOptionsCheckboxWidget extends StatelessWidget {
  final String text;

  const SearchPageFiltersOptionsCheckboxWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Row(
      children: [
        Checkbox(
          value: provider.searchFilterHas(text),
          onChanged: (checked) {
            if (checked != null && checked) {
              provider.addSearchFilter(text);
            } else {
              provider.removeSearchFilter(text);
            }
          },
        ),
        Text(text),
      ],
    );
  }
}
