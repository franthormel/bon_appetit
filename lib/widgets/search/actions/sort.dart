import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';

class SearchPageActionSortWidget extends StatelessWidget {
  const SearchPageActionSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Change to drop down with text
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return IconButton(
      tooltip: "Sort results",
      icon: const Icon(Icons.sort),
      onPressed: () {},
    );
  }
}
