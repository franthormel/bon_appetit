import 'package:flutter/material.dart';

import '../style/index.dart';
import '../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: const [
          SearchPageShowByTypeWidget(),
          SearchPageFilterWidget(),
          SearchPageSortWidget(),
        ],
      ),
      body: Container(
        color: BonAppetitColors.cultured,
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          children: const [
            SearchPageTextFieldWidget(),
            SearchPageCountWidget(),
            SearchPageListWidget(),
          ],
        ),
      ),
    );
  }
}
