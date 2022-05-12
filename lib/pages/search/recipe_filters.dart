import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class SearchRecipeFiltersPage extends StatelessWidget {
  const SearchRecipeFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldedWillPopWidget(
      body: SearchPageFiltersListWidget(),
      bottomNavigationBar: SearchPageFiltersActionsWidget(),
    );
  }
}
