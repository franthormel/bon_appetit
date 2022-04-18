import 'package:flutter/material.dart';

import '../widgets/index.dart';
import '../style/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: BonAppetitColors.cultured,
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          children: const [
            SearchPageTextFieldWidget(),
            SearchPageResultsControlsWidget(),
            SearchPageResultsCountWidget(),
            SearchPageResultsListWidget(),
          ],
        ),
      ),
    );
  }
}
