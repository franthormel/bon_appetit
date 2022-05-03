import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';
import 'control.dart';

class SearchPageControlsSortWidget extends StatelessWidget {
  const SearchPageControlsSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: PopupMenuButton<SearchSort>(
        child: SearchPageControlWidget(
          value: provider.sort.toLiteralValue(),
          title: "SORT BY",
        ),
        itemBuilder: (context) => SearchSort.values
            .map<PopupMenuEntry<SearchSort>>((e) => PopupMenuItem<SearchSort>(
                value: e, child: Text(e.toLiteralValue())))
            .toList(),
        onSelected: provider.changeSort,
      ),
    );
  }
}
