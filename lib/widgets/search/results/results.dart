import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../services/index.dart';
import 'text.dart';
import 'text_none.dart';

class SearchPageResultsWidget extends StatelessWidget {
  const SearchPageResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: provider.hasSearched
          ? provider.searchText.isEmpty
              ? SearchPageResultsTextNoneWidget(
                  count: provider.searchResultsLength,
                )
              : SearchPageResultsTextWidget(
                  count: provider.searchResultsLength,
                  text: provider.searchText,
                )
          : Container(),
    );
  }
}
