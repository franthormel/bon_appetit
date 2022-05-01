import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import 'filter_chip.dart';

class SearchPageFilterChipsWidget extends StatelessWidget {
  const SearchPageFilterChipsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return provider.showFilterChips ? Wrap(
      children: [
        ...provider.filters
            .map<Widget>((e) => SearchPageFilterChipWidget(e)),
        // TODO: Style
        TextButton(
          child: const Text("Clear All"),
          onPressed: () {
            provider.clearFilters();
          },
        ),
      ],
      spacing: 5.0,
    ) : Container();
  }

  List<Widget> _filterChipWidgets(List<String> filters) => filters
      .map<Widget>((e) => SearchPageFilterChipWidget(e))
      .toList();
}
