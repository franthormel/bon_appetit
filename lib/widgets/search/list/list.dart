import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import 'wrapper.dart';

class SearchPageListWidget extends StatelessWidget {
  const SearchPageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);
    final results = provider.searchResults;

    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, i) => SearchPageListWrapperWidget(results[i]),
        itemCount: results.length,
        separatorBuilder: (context, i) => const SizedBox(height: 10.0),
      ),
    );
  }
}
