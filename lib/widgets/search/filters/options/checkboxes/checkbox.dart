import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../services/index.dart';

class SearchFiltersOptionsCheckboxWidget extends StatelessWidget {
  final String text;

  const SearchFiltersOptionsCheckboxWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Row(
      children: [
        Checkbox(
          value: provider.searchFilterHas(text),
          onChanged: (checked) {
            print(checked);
          },
        ),
        Text(text),
      ],
    );
  }
}
