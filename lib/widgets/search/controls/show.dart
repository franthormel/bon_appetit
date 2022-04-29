import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/index.dart';
import '../../../services/index.dart';
import 'control.dart';

class SearchPageControlShowWidget extends StatelessWidget {
  const SearchPageControlShowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: PopupMenuButton<SearchCategory>(
        child: SearchPageControlWidget(
          value: provider.searchShow.toLiteralValue(),
          title: "SHOW",
        ),
        itemBuilder: (context) => SearchCategory.values
            .map<PopupMenuEntry<SearchCategory>>((e) =>
                PopupMenuItem<SearchCategory>(
                    value: e, child: Text(e.toLiteralValue())))
            .toList(),
        onSelected: provider.changeSearchCategory,
      ),
    );
  }
}
