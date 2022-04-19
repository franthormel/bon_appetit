import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/index.dart';
import '../style/index.dart';
import '../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  // TODO: 2. Create provider for search page
  // 1. Controller for TextField
  // 2. Show by (All Content, Recipes, Articles, Videos)
  // 3. Sort by (Relevance, newest, highest rating, most reviewed)

  // TODO: 3. Separate widgets by functionality and for future use (different sizes and platforms)

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            SearchPageActionShowWidget(),
            SearchPageActionFilterWidget(),
            SearchPageActionSortWidget(),
          ],
        ),
        // TODO: Separate body to another widget file
        body: Container(
          color: BonAppetitColors.cultured,
          child: Column(
            children: const [
              SearchPageTextFieldWidget(),
              SearchPageListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
