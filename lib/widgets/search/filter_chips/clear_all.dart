import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';

class SearchPageFilterChipsClearAllWidget extends StatelessWidget {
  const SearchPageFilterChipsClearAllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return TextButton(
      style: ButtonStyle(
        foregroundColor:
            MaterialStateProperty.all<Color>(BonAppetitColors.black),
      ),
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
