import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';

class SearchPageListWidget extends StatelessWidget {
  const SearchPageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final search = Provider.of<SearchProvider>(context, listen: false);
    final source = Provider.of<DatasetSource>(context, listen: false);
    final results = search.fetchResults(source);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            title: Text(results[i].title),
            onTap: () {},
          ),
          itemCount: results.length,
          separatorBuilder: (context, i) => const SizedBox(height: 15.0),
        ),
      ),
    );
  }
}
