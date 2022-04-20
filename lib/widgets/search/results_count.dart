import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';

class SearchPageResultsCountWidget extends StatelessWidget {
  const SearchPageResultsCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    // TODO: Use RichText to make the message more descriptive
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        provider.resultsLengthText,
        style: Theme.of(context)
            .textTheme
            .caption
            ?.copyWith(fontWeight: FontWeight.w400, letterSpacing: 0.4),
      ),
    );
  }
}
