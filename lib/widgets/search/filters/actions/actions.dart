import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../services/index.dart';
import '../../../../../style/index.dart';
import 'buttons.dart';

class SearchPageFiltersActionsWidget extends StatelessWidget {
  const SearchPageFiltersActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context);

    return Container(
      decoration: const BoxDecoration(
        color: BonAppetitColors.white,
        boxShadow: [
          BoxShadow(
            color: BonAppetitColors.platinum,
            offset: Offset(0, -1),
            blurRadius: 1.0,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("${provider.resultsLength} matching results"),
          const SizedBox(height: 10.0),
          const SearchPageFiltersButtonsWidget(),
        ],
      ),
    );
  }
}
