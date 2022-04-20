import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';

class SearchPageListWidget extends StatelessWidget {
  const SearchPageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            // TODO: Change widget
            title: Text("Result $i"),
            onTap: () {},
          ),
          itemCount: provider.searchResults.length,
          separatorBuilder: (context, i) => const SizedBox(height: 15.0),
        ),
      ),
    );
  }
}
