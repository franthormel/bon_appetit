import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';
import 'others/control_menu_icon.dart';

class SearchPageActionSortWidget extends StatelessWidget {
  const SearchPageActionSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: PopupMenuButton<SearchSort>(
        child: SearchPageActionControlMenuIconWidget(
          value: provider.searchSort.toLiteralValue(),
          title: "SORT BY",
        ),
        itemBuilder: (context) => SearchSort.values
            .map<PopupMenuEntry<SearchSort>>((e) => PopupMenuItem<SearchSort>(
                value: e, child: Text(e.toLiteralValue())))
            .toList(),
        onSelected: provider.changeSearchSort,
      ),
    );
  }
}
