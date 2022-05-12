import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../others/underlined_text_button.dart';

class SearchPageFilterChipsClearAllWidget extends StatelessWidget {
  const SearchPageFilterChipsClearAllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return UnderlinedTextButtonWidget(
      onPressed: () {
        provider.clearFilters();
      },
      text: "Clear All",
    );
  }
}
