import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../services/index.dart';
import 'no_text.dart';
import 'have_text.dart';

class SearchPageResultsWidget extends StatelessWidget {
  const SearchPageResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: provider.searchTextIsEmpty
          ? SearchPageResultsNoTextWidget(count: provider.resultsLength)
          : SearchPageResultsHaveTextWidget(),
    );
  }
}
