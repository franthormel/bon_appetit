import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';

class SearchPageFilterChipsClearAllWidget extends StatelessWidget {
  const SearchPageFilterChipsClearAllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    // TODO: Create underlined text button widget for reuse
    return TextButton(
      child: const Text(
        "Clear All",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onPressed: () {
        provider.clearFilters();
      },
    );
  }
}
